package com.project.restaurant.login;

import java.io.IOException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.model.OAuthRequest;
import com.github.scribejava.core.model.Response;
import com.github.scribejava.core.model.Verb;
import com.github.scribejava.core.oauth.OAuth20Service;

import jakarta.servlet.http.HttpSession;


@Service
public class KakaoLoginBO {

	@Value("${kakao.auth.requestUrl}")
	private String requestUrl;
	
	@Value("${kakao.auth.redirectUrl}")
	private String redirectUrl;
	
	@Value("${kakao.auth.profileApiUrl}")
	private String profileApiUrl;
	
	@Value("${kakao.auth.grantType}")
	private String grantType;
	
	@Value("${kakao.auth.clientId}")
	private String clientId;
	
	@Value("${kakao.auth.clientSecret}")
	private String clientSecret;
	
	@Value("${kakao.auth.sessionState}")
	private String sessionState;
	
	String access_Token;
	String refresh_Token;
	
	public String getAuthorizationUrl(HttpSession session) {
		
	  /* 세션 유효성 검증을 위하여 난수를 생성 */
        String state = generateRandomString();
        
        /* 생성한 난수 값을 session에 저장 */
        setSession(session,state);     
        
        /* Scribe에서 제공하는 인증 URL 생성 기능을 이용하여 네아로 인증 URL 생성 */
        OAuth20Service oauthService = new ServiceBuilder()                                                   
                .apiKey(clientId)
                .apiSecret(clientSecret)
                .callback(redirectUrl)
                .state(state) //앞서 생성한 난수값을 인증 URL생성시 사용함
                .build(KakaoOauthApi.instance());

        return oauthService.getAuthorizationUrl();
	}
	
	/* 카카오로그인 시 Callback 처리 및  AccessToken 획득 Method */
    public OAuth2AccessToken getAccessToken(HttpSession session, String code, String state) throws IOException{

    	System.out.println("==============		kakao getAccessToken Start");
    	
        /* Callback으로 전달받은 세선검증용 난수값과 세션에 저장되어있는 값이 일치하는지 확인 */
        String sessionState = getSession(session);
        System.out.println("sessionState		::	" + sessionState);
        
        if(StringUtils.pathEquals(sessionState, state)){

            OAuth20Service oauthService = new ServiceBuilder()
                    .apiKey(clientId)
                    .apiSecret(clientSecret)
                    .callback(redirectUrl)
                    .state(state)
                    .build(KakaoOauthApi.instance());
            
            System.out.println("oauthService		::	" + oauthService);

            /* Scribe에서 제공하는 AccessToken 획득 기능으로 네아로 Access Token을 획득 */
            OAuth2AccessToken accessToken = oauthService.getAccessToken(code);
            System.out.println("accessToken		::	" + accessToken);
        
            System.out.println("==============		kakao getAccessToken End");
            
            return accessToken;
        }
        return null;
    }
    
    /* Access Token을 이용하여 네이버 사용자 프로필 API를 호출 */
    public String getUserProfile(OAuth2AccessToken oauthToken) throws IOException{

        OAuth20Service oauthService = new ServiceBuilder()
                .apiKey(clientId)
                .apiSecret(clientSecret)
                .callback(redirectUrl)
                .build(KakaoOauthApi.instance());

        OAuthRequest request = new OAuthRequest(Verb.GET, profileApiUrl, oauthService);
        oauthService.signRequest(oauthToken, request);
        Response response = request.send();
        
        return response.getBody();
    }
	
	/* 세션 유효성 검증을 위한 난수 생성기 */
    private String generateRandomString() {
        return UUID.randomUUID().toString();
    }
    
    /* http session에서 데이터 가져오기 */ 
    private String getSession(HttpSession session){
        return (String) session.getAttribute(sessionState);
    }
	
    /* http session에 데이터 저장 */
    private void setSession(HttpSession session,String state){
        session.setAttribute(sessionState, state);     
    }
    
    
    
    
	/**
	
	public String getKakaoAccessToken(String code) throws IOException {
		
		try {
			System.out.println("getKakaoAccessToken	Start");
			System.out.println(requestUrl);
			System.out.println(grantType);
			System.out.println(clientId);
			System.out.println(redirectUrl);
			URL url = new URL(requestUrl);
			System.out.println("getKakaoAccessToken	url	" + url);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			System.out.println("getKakaoAccessToken	conn " + conn);
			
			// POST 요청을 위해 기본값이 false인 setDoOutput을 true로
            conn.setRequestMethod("POST");
            conn.setDoOutput(true);
			 
            // POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
            BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
            StringBuilder sb = new StringBuilder();
            sb.append("?grant_type=" + grantType);
            sb.append("&client_id=" + clientId); // TODO REST_API_KEY 입력
            sb.append("&redirect_uri=" + redirectUrl); // TODO 인가코드 받은 redirect_uri 입력
            sb.append("&code=" + code);
            bw.write(sb.toString());
            bw.flush();
            
            // 결과 코드가 200이라면 성공
            int responseCode = conn.getResponseCode();
            System.out.println("responseCode : " + responseCode);
            
            //요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line = "";
            String result = "";
			 
            while ((line = br.readLine()) != null) {
                result += line;
            }
            System.out.println("response body : " + result);

            //Gson 라이브러리에 포함된 클래스로 JSON파싱 객체 생성
//            JsonObject json = new JsonObject();
//            JsonElement element = json.getAsJsonObject(result);
            JsonParser parser = new JsonParser();
            JsonElement element = parser.parse(result);

          access_Token = element.getAsJsonObject().get("access_token").getAsString();
          refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();
//            access_Token = element.getAsJsonObject().get("access_token").toString();
//            refresh_Token = element.getAsJsonObject().get("refresh_token").toString();
            
            br.close();
            bw.close();
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return access_Token;
	}
	*/
}
