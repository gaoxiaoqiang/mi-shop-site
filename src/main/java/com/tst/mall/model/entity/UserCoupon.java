package com.tst.mall.model.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * <p>
 * 
 * </p>
 *
 * @author gxq
 * @since 2025-05-28
 */
@Getter
@Setter
@ToString
@TableName("tb_mall_user_coupon")
public class UserCoupon implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 用户优惠券ID
     */
    @TableId(value = "user_coupon_id", type = IdType.AUTO)
    private Long userCouponId;

    /**
     * 用户ID
     */
    private Long userId;

    /**
     * 优惠券ID
     */
    private Long couponId;

    /**
     * 状态 0-未使用 1-已使用 2-已过期
     */
    private Byte couponStatus;

    /**
     * 领取时间
     */
    private LocalDateTime getTime;

    /**
     * 使用时间
     */
    private LocalDateTime useTime;

    /**
     * 过期时间
     */
    private LocalDateTime expireTime;

    /**
     * 是否删除 0-未删除 1-已删除
     */
    private Byte deleteFlag;
}
