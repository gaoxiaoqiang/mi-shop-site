package com.tst.mall.model.entity.dto;

import lombok.Data;
import org.springframework.beans.BeanUtils;

import java.util.Date;

@Data
public class UserDto {
    private Long userId;
    private String username;
    private String userImg;
    private String userPhone;
    private String qqId;
    private String wxId;
    private Date createTime;
    private Date updateTime;
    private String token;

    public static  UserDto newInstance(UserDetailsImpl user, String token){
        UserDto userDto = new UserDto();
        BeanUtils.copyProperties(user,userDto);
        userDto.setToken(token);
        return userDto;
    }

}
