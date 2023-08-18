package com.project.restaurant.login;

import org.springframework.stereotype.Component;

import com.github.scribejava.core.builder.api.DefaultApi20;

@Component
public class KakaoOauthApi extends DefaultApi20 {

	protected KakaoOauthApi() {
	}
	
	private static class InstanceHolder{
        private static final KakaoOauthApi INSTANCE = new KakaoOauthApi();
    }
	
	public static KakaoOauthApi instance(){
        return InstanceHolder.INSTANCE;
    }

	@Override
	public String getAccessTokenEndpoint() {
		return "https://kauth.kakao.com/oauth/token";
	}

	@Override
	protected String getAuthorizationBaseUrl() {
		return "https://kauth.kakao.com/oauth/authorize";
	}
}
