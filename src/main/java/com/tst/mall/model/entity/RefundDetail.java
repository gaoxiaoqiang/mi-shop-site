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
@TableName("tb_mall_refund_detail")
public class RefundDetail implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 退款ID
     */
    @TableId(value = "refund_id", type = IdType.AUTO)
    private Long refundId;

    /**
     * 退货订单ID
     */
    private Long returnOrderId;

    /**
     * 原订单ID
     */
    private Long orderId;

    /**
     * 退款金额
     */
    private BigDecimal refundAmount;

    /**
     * 退款状态 0-待处理 1-退款中 2-退款成功 3-退款失败
     */
    private Byte refundStatus;

    /**
     * 退款方式
     */
    private String refundMethod;

    /**
     * 退款时间
     */
    private LocalDateTime refundTime;

    /**
     * 是否删除 0-未删除 1-已删除
     */
    private Byte deleteFlag;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;
}
