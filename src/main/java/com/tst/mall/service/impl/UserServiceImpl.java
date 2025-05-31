package com.tst.mall.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.tst.mall.common.exception.BaseException;
import com.tst.mall.mapper.UserMapper;
import com.tst.mall.model.entity.User;
import com.tst.mall.model.entity.dto.UserDetailsImpl;
import com.tst.mall.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;


@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User>  implements UserService,UserDetailsService{


    @Autowired
    private   UserMapper userMapper;


     @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
         User malluser = userMapper.findByUserName(username);
        if (malluser == null) {
            throw new BaseException("用户名不存在");
        }
        return new UserDetailsImpl( malluser);
    }


}
