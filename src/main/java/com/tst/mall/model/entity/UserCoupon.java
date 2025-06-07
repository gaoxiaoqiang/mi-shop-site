package com.tst.mall.model.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.time.LocalDateTime;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

/**
 * <p>
 * 
 * </p>
 *
 * @author gxq
 * @since 2025-06-05
 */
@Getter
@Setter
@TableName("tb_mall_user_coupon")
@Schema(name = "UserCoupon", description = "$!{table.comment}")
public class UserCoupon implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(description = "用户优惠券ID")
    @TableId(value = "user_coupon_id", type = IdType.AUTO)
    private Long userCouponId;

    @Schema(description = "用户ID")
    private Long userId;

    @Schema(description = "优惠券ID")
    private Long couponId;

    @Schema(description = "状态 0-未使用 1-已使用 2-已过期")
    private Byte couponStatus;

    @Schema(description = "领取时间")
    private LocalDateTime getTime;

    @Schema(description = "使用时间")
    private LocalDateTime useTime;

    @Schema(description = "过期时间")
    private LocalDateTime expireTime;

    @Schema(description = "是否删除 0-未删除 1-已删除")
    private Byte deleteFlag;
}
