package com.tst.mall.config.security;


import com.tst.mall.util.JwtUtil;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;
import java.util.ArrayList;

@Component
public class JwtAuthenticationFilter extends OncePerRequestFilter {

     @Autowired
     private JwtUtil jwtUtil;

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
            throws ServletException, IOException {
        String token = request.getHeader("Authorization");
        if (token != null && token.startsWith("Bearer ")) {
            token = token.substring(7);
            // 校验token并获取用户名
             String username = jwtUtil.getUsernameFromToken(token);
             if (username != null && SecurityContextHolder.getContext().getAuthentication() == null) {
                 // 校验token有效性
                 if (jwtUtil.validateToken(token)) {
                     UsernamePasswordAuthenticationToken authentication =
                             new UsernamePasswordAuthenticationToken(username, null, new ArrayList<>());
                     authentication.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
                     SecurityContextHolder.getContext().setAuthentication(authentication);
                 }
             }
        }
        filterChain.doFilter(request, response);
    }
}