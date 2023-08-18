package com.project.restaurant.login;

import org.springframework.stereotype.Component;

import com.github.scribejava.core.builder.api.DefaultApi20;

@Component
public class GoogleOauthApi extends DefaultApi20 {

	protected GoogleOauthApi() {
	}
	
	private static class InstanceHolder{
        private static final GoogleOauthApi INSTANCE = new GoogleOauthApi();
    }
	
	public static GoogleOauthApi instance(){
        return InstanceHolder.INSTANCE;
    }

	@Override
	public String getAccessTokenEndpoint() {
		return "https://oauth2.googleapis.com/token";
//		return "https://securetoken.googleapis.com/v1/token";
	}

	@Override
	protected String getAuthorizationBaseUrl() {
		return "https://accounts.google.com/o/oauth2/v2/auth";
//		return "https://www.googleapis.com/userinfo/v2/me";
	}
}
