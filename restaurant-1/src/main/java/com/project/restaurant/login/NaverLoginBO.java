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
public class NaverLoginBO {

	@Value("${naver.auth.redirectUrl}")
	private String redirectUrl;
	
	@Value("${naver.auth.profileApiUrl}")
	private String profileApiUrl;
	
	@Value("${naver.auth.clientId}")
	private String clientId;
	
	@Value("${naver.auth.clientSecret}")
	private String clientSecret;
	
	@Value("${naver.auth.sessionState}")
	private String sessionState;
    
    
    /* 네이버 아이디로 인증  URL 생성  Method */
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
                .build(NaverOauthApi.instance());

        return oauthService.getAuthorizationUrl();
    }
    
    
    
    
    /* 네이버아이디로 Callback 처리 및  AccessToken 획득 Method */
    public OAuth2AccessToken getAccessToken(HttpSession session, String code, String state) throws IOException{

        /* Callback으로 전달받은 세선검증용 난수값과 세션에 저장되어있는 값이 일치하는지 확인 */
        String sessionState = getSession(session);
        
        if(StringUtils.pathEquals(sessionState, state)){
            OAuth20Service oauthService = new ServiceBuilder()
                    .apiKey(clientId)
                    .apiSecret(clientSecret)
                    .callback(redirectUrl)
                    .state(state)
                    .build(NaverOauthApi.instance());

            /* Scribe에서 제공하는 AccessToken 획득 기능으로 네아로 Access Token을 획득 */
            OAuth2AccessToken accessToken = oauthService.getAccessToken(code);
            
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
    
    /* Access Token을 이용하여 네이버 사용자 프로필 API를 호출 */
    public String getUserProfile(OAuth2AccessToken oauthToken) throws IOException{

        OAuth20Service oauthService =new ServiceBuilder()
                .apiKey(clientId)
                .apiSecret(clientSecret)
                .callback(redirectUrl)
                .build(NaverOauthApi.instance());

        OAuthRequest request = new OAuthRequest(Verb.GET, profileApiUrl, oauthService);
        
        oauthService.signRequest(oauthToken, request);
        Response response = request.send();
        
        return response.getBody();
    }
}
