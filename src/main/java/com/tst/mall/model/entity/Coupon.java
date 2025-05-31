package com.tst.mall.model.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.math.BigDecimal;
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
@TableName("tb_mall_coupon")
public class Coupon implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 优惠券ID
     */
    @TableId(value = "coupon_id", type = IdType.AUTO)
    private Long couponId;

    /**
     * 优惠券名称
     */
    private String couponName;

    /**
     * 类型 1-满减 2-折扣 3-现金券
     */
    private Byte couponType;

    /**
     * 面额/折扣
     */
    private BigDecimal couponAmount;

    /**
     * 使用门槛
     */
    private BigDecimal couponMinAmount;

    /**
     * 生效时间
     */
    private LocalDateTime couponStartTime;

    /**
     * 失效时间
     */
    private LocalDateTime couponEndTime;

    /**
     * 发放总量
     */
    private Integer couponTotal;

    /**
     * 每人限领
     */
    private Integer couponLimit;

    /**
     * 状态 1-启用 0-禁用
     */
    private Byte couponStatus;

    /**
     * 是否删除 0-未删除 1-已删除
     */
    private Byte deleteFlag;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;
}
