package com.tst.mall.controller;

import com.tst.mall.common.response.ApiResult;
import com.tst.mall.model.entity.dto.UserDetailsImpl;
import com.tst.mall.model.entity.dto.UserDto;
import com.tst.mall.service.UserService;
import com.tst.mall.util.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    UserService userService;
    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private JwtUtil jwtUtil;


    @GetMapping("/test")
    public ApiResult<Boolean> test() {
        return new ApiResult<>(true);

    }


    @PostMapping("/login")
    public ApiResult<Object> login(@RequestParam String username, @RequestParam String password) {
            Authentication authentication = authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(username, password)
            );
            UserDetailsImpl user =(UserDetailsImpl) authentication.getPrincipal();
            // 认证通过后可生成JWT并返回
            String token = JwtUtil.generateToken(username);
            UserDto userDto = UserDto.newInstance(user, token);
            return ApiResult.success(userDto);
    }



}
