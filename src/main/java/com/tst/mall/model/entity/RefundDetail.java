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
 * 退款详情表
 * </p>
 *
 * @author gxq
 * @since 2025-06-05
 */
@Getter
@Setter
@TableName("tb_mall_refund_detail")
@Schema(name = "RefundDetail", description = "$!{table.comment}")
public class RefundDetail implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(description = "退款ID")
    @TableId(value = "refund_id", type = IdType.AUTO)
    private Long refundId;

    @Schema(description = "退款单号")
    private String refundSn;

    @Schema(description = "退货订单ID")
    private Long returnOrderId;

    @Schema(description = "原订单ID")
    private Long orderId;

    @Schema(description = "用户ID")
    private Long userId;

    @Schema(description = "退款金额")
    private BigDecimal refundAmount;

    @Schema(description = "退款类型 1-仅退款 2-退货退款")
    private Byte refundType;

    @Schema(description = "退款状态 0-待处理 1-退款中 2-退款成功 3-退款失败")
    private Byte refundStatus;

    @Schema(description = "退款原因类型 1-质量问题 2-订单取消 3-缺货 4-其他")
    private Byte refundReasonType;

    @Schema(description = "退款原因")
    private String refundReason;

    @Schema(description = "退款方式 1-原路返回 2-退到余额")
    private Byte refundMethod;

    @Schema(description = "退款账号")
    private String refundAccount;

    @Schema(description = "退款流水号")
    private String refundPaySn;

    @Schema(description = "退款时间")
    private LocalDateTime refundTime;

    @Schema(description = "管理员备注")
    private String adminNote;

    @Schema(description = "处理时间")
    private LocalDateTime handleTime;

    @Schema(description = "处理人")
    private String handleMan;

    @Schema(description = "是否删除 0-未删除 1-已删除")
    private Byte deleteFlag;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;
}
