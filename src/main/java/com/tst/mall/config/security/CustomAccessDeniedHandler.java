package com.tst.mall.config.security;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.tst.mall.common.response.ApiResult;
import jakarta.annotation.Resource;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.stereotype.Component;

import java.io.IOException;

@Component
public class CustomAccessDeniedHandler implements AccessDeniedHandler {

    @Resource
    private ObjectMapper objectMapper;

    @Override
    public void handle(HttpServletRequest request, HttpServletResponse response, AccessDeniedException e) throws IOException {

        response.setContentType("application/json;charset=UTF-8");
            ApiResult<?> result = ApiResult.fail( e,HttpServletResponse.SC_FORBIDDEN);
            String json = objectMapper.writeValueAsString(result);
            response.getWriter().write(json);
    }
}