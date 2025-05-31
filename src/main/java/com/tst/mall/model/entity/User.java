package com.tst.mall.model.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

@Data
@TableName("`tb_mall_user`")
public class User {
    @TableId
    private Long userId;
    private String username;
    private String userImg;
    private String userPassword;
    private String userPhone;
    private String qqId;
    private String wxId;
    private Byte delete_flag;
    private Byte lockedFlag;
    private Date createTime;
    private Date updateTime;
}
