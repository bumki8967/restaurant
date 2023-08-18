package com.project.restaurant.login;

import org.springframework.stereotype.Component;

import com.github.scribejava.core.builder.api.DefaultApi20;

@Component
public class NaverOauthApi extends DefaultApi20 {
	
	protected NaverOauthApi() {
	}
	
	private static class InstanceHolder{
        private static final NaverOauthApi INSTANCE = new NaverOauthApi();
    }
	
	public static NaverOauthApi instance(){
        return InstanceHolder.INSTANCE;
    }

	@Override
	public String getAccessTokenEndpoint() {
		return "https://nid.naver.com/oauth2.0/token";
	}

	@Override
	protected String getAuthorizationBaseUrl() {
		return "https://nid.naver.com/oauth2.0/authorize";
	}

}
