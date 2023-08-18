//package com.project.restaurant.user;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.web.builders.WebSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.web.firewall.DefaultHttpFirewall;
//import org.springframework.security.web.firewall.HttpFirewall;
//
//@Configuration
//@EnableWebSecurity
//public class SecurityConfig extends WebSecurityConfigurerAdapter {
//
////	@Autowired 
////	SnsLoginSuccessHandler snsLoginSuccessHandler;
////	
////	@Autowired 
////	SnsLoginFailureHandler snsLoginFailureHandler;
////	
////	@Autowired 
////	SnsUserServiceImpl userService;
////	
////	@Override
////	protected void configure(HttpSecurity http) throws Exception {
////		http.csrf().disable()
////			.authorizeRequests().antMatchers("/login/**").permitAll().anyRequest().authenticated()
////			.and().oauth2Login().loginPage("/user/loginView").userInfoEndpoint().userService(userService)
////			.and().successHandler(snsLoginSuccessHandler).failureHandler(snsLoginFailureHandler);
////	}
//	
//	@Override
//	public void configure(WebSecurity web) throws Exception {
//	    web.httpFirewall(defaultHttpFirewall());
//	}
//	 
//	@Bean
//	public HttpFirewall defaultHttpFirewall() {
//	    return new DefaultHttpFirewall();
//	}
//}
