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
 * 订单主表
 * </p>
 *
 * @author gxq
 * @since 2025-06-05
 */
@Getter
@Setter
@TableName("tb_mall_order")
@Schema(name = "Order", description = "$!{table.comment}")
public class Order implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(description = "订单ID")
    @TableId(value = "order_id", type = IdType.AUTO)
    private Long orderId;

    @Schema(description = "订单编号")
    private String orderSn;

    @Schema(description = "用户ID")
    private Long userId;

    @Schema(description = "订单总金额")
    private BigDecimal orderTotalAmount;

    @Schema(description = "订单原始金额")
    private BigDecimal orderOriginalAmount;

    @Schema(description = "优惠券优惠金额")
    private BigDecimal orderCouponDiscount;

    @Schema(description = "活动优惠金额")
    private BigDecimal orderPromotionDiscount;

    @Schema(description = "实际支付金额")
    private BigDecimal orderActualAmount;

    @Schema(description = "使用的优惠券ID")
    private Long orderCouponId;

    @Schema(description = "参与的活动ID")
    private Long orderPromotionId;

    @Schema(description = "订单状态 0-待支付 1-已支付 2-已发货 3-已完成 4-已取消 5-退款中 6-部分退款 7-全部退款")
    private Byte orderStatus;

    @Schema(description = "支付方式 0-未支付 1-支付宝 2-微信 3-银行卡")
    private Byte orderPayType;

    @Schema(description = "支付流水号")
    private String orderPaySn;

    @Schema(description = "支付时间")
    private LocalDateTime orderPayTime;

    @Schema(description = "发货时间")
    private LocalDateTime orderShipTime;

    @Schema(description = "完成时间")
    private LocalDateTime orderCompleteTime;

    @Schema(description = "取消时间")
    private LocalDateTime orderCancelTime;

    @Schema(description = "取消原因")
    private String orderCancelReason;

    @Schema(description = "自动取消时间")
    private LocalDateTime orderAutoCancelTime;

    @Schema(description = "收货人姓名")
    private String orderReceiverName;

    @Schema(description = "收货人手机号")
    private String orderReceiverPhone;

    @Schema(description = "省")
    private String orderReceiverProvince;

    @Schema(description = "市")
    private String orderReceiverCity;

    @Schema(description = "区")
    private String orderReceiverDistrict;

    @Schema(description = "详细地址")
    private String orderReceiverAddress;

    @Schema(description = "订单备注")
    private String orderRemark;

    @Schema(description = "快递公司")
    private String expressCompany;

    @Schema(description = "快递单号")
    private String expressNumber;

    @Schema(description = "已退款金额")
    private BigDecimal refundAmount;

    @Schema(description = "是否删除 0-未删除 1-已删除")
    private Byte deleteFlag;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;
}
