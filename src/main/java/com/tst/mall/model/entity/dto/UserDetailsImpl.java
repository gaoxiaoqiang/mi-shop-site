package com.tst.mall.model.entity.dto;

import com.tst.mall.common.constant.Flag;
import com.tst.mall.model.entity.User;
import lombok.Data;
import org.springframework.beans.BeanUtils;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.Date;
import java.util.List;

@Data
public class UserDetailsImpl implements UserDetails {

    private String username;

    private String password;

    private String userPhone;

    private String userImg;

    private Long userId;

    private Byte deleteFlag;

    private Byte lockedFlag;

    private Date createTime;

    private Date updateTime;

    public UserDetailsImpl(User user){
        this.password= user.getUserPassword();
        this.username= user.getUserName();
        BeanUtils.copyProperties(user,this);

    }
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return List.of();
    }

    @Override
    public String getPassword() {
        return this.password;
    }

    @Override
    public String getUsername() {
        return this.username;
    }

    @Override
    public boolean isAccountNonExpired() {
        return Boolean.TRUE;
    }

    @Override
    public boolean isAccountNonLocked() {
        return lockedFlag==0?Boolean.TRUE:Boolean.FALSE;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return Boolean.TRUE;
    }

    @Override
    public boolean isEnabled() {
        return Boolean.TRUE;
    }
}
