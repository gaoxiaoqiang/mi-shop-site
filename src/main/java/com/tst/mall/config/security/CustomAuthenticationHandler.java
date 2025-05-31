package com.tst.mall.config.security;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.tst.mall.common.response.ApiResult;
import jakarta.annotation.Resource;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.stereotype.Component;

import java.io.IOException;

@Component
public class CustomAuthenticationHandler implements AuthenticationEntryPoint {


    @Resource
    private ObjectMapper objectMapper;

    @Override
    public void commence(HttpServletRequest request, HttpServletResponse response, AuthenticationException e) throws IOException {
       response.setStatus(HttpServletResponse.SC_UNAUTHORIZED); // 设置401状态码
        response.setContentType("application/json;charset=UTF-8");
        ApiResult<?> result = ApiResult.fail( e,HttpServletResponse.SC_UNAUTHORIZED);
        String json = objectMapper.writeValueAsString(result);
        response.getWriter().write(json);
    }
}
