package com.tst.mall.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.tst.mall.model.entity.User;


public interface UserMapper extends BaseMapper<User> {


    User findByUserName(String username);
}
