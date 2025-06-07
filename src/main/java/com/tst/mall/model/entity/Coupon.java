package com.tst.mall.model.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.math.BigDecimal;
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
@TableName("tb_mall_coupon")
@Schema(name = "Coupon", description = "$!{table.comment}")
public class Coupon implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(description = "优惠券ID")
    @TableId(value = "coupon_id", type = IdType.AUTO)
    private Long couponId;

    @Schema(description = "优惠券名称")
    private String couponName;

    @Schema(description = "类型 1-满减 2-折扣 3-现金券")
    private Byte couponType;

    @Schema(description = "面额/折扣")
    private BigDecimal couponAmount;

    @Schema(description = "使用门槛")
    private BigDecimal couponMinAmount;

    @Schema(description = "生效时间")
    private LocalDateTime couponStartTime;

    @Schema(description = "失效时间")
    private LocalDateTime couponEndTime;

    @Schema(description = "发放总量")
    private Integer couponTotal;

    @Schema(description = "每人限领")
    private Integer couponLimit;

    @Schema(description = "状态 1-启用 0-禁用")
    private Byte couponStatus;

    @Schema(description = "是否删除 0-未删除 1-已删除")
    private Byte deleteFlag;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;
}
