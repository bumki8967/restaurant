package com.project.restaurant.login;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.stream.Collectors;

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
public class GoogleLoginBO {

	@Value("${google.auth.requestUrl}")
	private String requestUrl;
	
	@Value("${google.auth.redirectUrl}")
	private String redirectUrl;
	
	@Value("${google.auth.profileApiUrl}")
	private String profileApiUrl;
	
	@Value("${google.auth.clientId}")
	private String clientId;
	
	@Value("${google.auth.clientSecret}")
	private String clientSecret;
	
	@Value("${google.auth.sessionState}")
	private String sessionState;
    
	@Value("${google.auth.scope}")
	private String scope;
	
	@Value("${google.auth.grantType}")
	private String grantType;
	
	public String getAuthorizationUrl() {
		System.out.println("1");
		Map<String, Object> params = new HashMap<>();
		params.put("client_id", clientId);
		params.put("redirect_uri", redirectUrl);
		params.put("response_type", "code");
		params.put("scope", scope.replace(",", "%20"));
		
		String paramStr = params.entrySet().stream().map(param -> param.getKey() + "=" + param.getValue()).collect(Collectors.joining("&"));
		
		return requestUrl + "?" + paramStr;
	}
    
    /* 네이버 아이디로 인증  URL 생성  Method */
    public String getAuthorizationUrl(HttpSession session) {
    	System.out.println("getAuthorizationUrl");
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
                .scope(scope)
                .build(GoogleOauthApi.instance());

        return oauthService.getAuthorizationUrl();
    }
    
    
//    public ResponseEntity<String> getAccessToken(String code) {
//    	
//    	RestTemplate template = new RestTemplate();
//    	Map<String, String> params = new HashMap<>();
//    	
//    	params.put("code", code);
//    	params.put("client_id", clientId);
//    	params.put("client_secret", clientSecret);
//    	params.put("redirect_uri", redirectUrl);
//    	params.put("grant_type", grantType);
//    	
//    	ResponseEntity<String> responseEntity = template.postForEntity(requestUrl, params, String.class);
//    	
//    	if (responseEntity.getStatusCode() == HttpStatus.OK) {
//    		return responseEntity;
//    	}
//    	
//    	return null;
//    }
//    
//    public String decryptBase64UrlToken(String jwtToken) {
//    	byte[] decode = new Base64().decode(jwtToken);
//    	
//    	return new String(decode, StandardCharsets.UTF_8);
//    }
    
    /* 네이버아이디로 Callback 처리 및  AccessToken 획득 Method */
    public OAuth2AccessToken getAccessToken(HttpSession session, String code, String state) throws IOException{

    	System.out.println("------------------------------------------------------------");
    	System.out.println("GoogleLoginBO	Start");
    	
        /* Callback으로 전달받은 세선검증용 난수값과 세션에 저장되어있는 값이 일치하는지 확인 */
        String sessionState = getSession(session);
        
        if(StringUtils.pathEquals(sessionState, state)){
        	System.out.println("SessionState	::	" + sessionState);
        	System.out.println("clientId	::	" + clientId);
        	System.out.println("clientSecret	::	" + clientSecret);
        	System.out.println("redirectUrl	::	" + redirectUrl);
        	System.out.println("scope	::	" + scope);
        	System.out.println("state	::	" + state);

            OAuth20Service oauthService = new ServiceBuilder()
            		.apiKey(clientId)
            		.apiSecret(clientSecret)
            		.callback(redirectUrl)
            		.state(state)
            		.scope(scope)
            		.build(GoogleOauthApi.instance());

            /* Scribe에서 제공하는 AccessToken 획득 기능으로 구글 Access Token을 획득 */
            OAuth2AccessToken accessToken = oauthService.getAccessToken(code);
            System.out.println("oauthService	::	" + oauthService);
            System.out.println("accessToken	::	" + accessToken);
        	System.out.println("GoogleLoginBO	End");
        	System.out.println("------------------------------------------------------------");
        	
            return accessToken;
        }
        return null;
    }
    
    
    /* 세션 유효성 검증을 위한 난수 생성기 */
    private String generateRandomString() {
        return UUID.randomUUID().toString();
    }

    /* http session에 데이터 저장 */
    private void setSession(HttpSession session,String state){
        session.setAttribute(sessionState, state);     
    }

    /* http session에서 데이터 가져오기 */ 
    private String getSession(HttpSession session){
        return (String) session.getAttribute(sessionState);
    }
    
    /* Access Token을 이용하여 구글 사용자 프로필 API를 호출 */
    public String getUserProfile(OAuth2AccessToken oauthToken) throws IOException{

    	System.out.println("==============	getUserProfile   ==============");
    	
        OAuth20Service oauthService = new ServiceBuilder()
                .apiKey(clientId)
                .apiSecret(clientSecret)
                .callback(redirectUrl)
                .scope(scope)
                .build(GoogleOauthApi.instance());

        OAuthRequest request = new OAuthRequest(Verb.GET, profileApiUrl, oauthService);
        
        System.out.println("==============	Verb.GET	::	" + Verb.GET);
        System.out.println("==============	oauthService	::	" + oauthService);
        System.out.println("==============	request			::	" + request);
        System.out.println("==============	profileApiUrl   ::	" + profileApiUrl);
        
        oauthService.signRequest(oauthToken, request);
        Response response = request.send();
        
        System.out.println("==============	response   ::	" + response);
        
        System.out.println("response.getBody		::	" + response.getHeaders());

        System.out.println("==============	getUserProfile   ==============");
        
        return response.getBody();
    }
}
