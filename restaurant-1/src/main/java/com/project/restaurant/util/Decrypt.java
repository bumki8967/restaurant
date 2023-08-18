package com.project.restaurant.util;

import java.nio.charset.StandardCharsets;

import org.apache.commons.codec.binary.Base64;
import org.springframework.stereotype.Component;

@Component
public class Decrypt {

	public String decryptBase64UrlToken(String jwtToken) {
	    byte[] decode = new Base64().decode(jwtToken);
	    return new String(decode, StandardCharsets.UTF_8);
	}
}
  