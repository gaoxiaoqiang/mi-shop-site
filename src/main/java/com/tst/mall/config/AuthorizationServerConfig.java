//package com.tst.mall.config;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.web.configuration.OAuth2AuthorizationServerConfiguration;
//import org.springframework.security.oauth2.server.authorization.config.annotation.web.configuration.OAuth2AuthorizationServerConfigurer;
//import org.springframework.security.web.SecurityFilterChain;
//
//@Configuration
//public class AuthorizationServerConfig {
//
//    @Bean
//    public SecurityFilterChain authorizationServerSecurityFilterChain(org.springframework.security.config.annotation.web.builders.HttpSecurity http) throws Exception {
//        OAuth2AuthorizationServerConfiguration.applyDefaultSecurity(http);
//        return http.formLogin().and().build();
//    }
//}