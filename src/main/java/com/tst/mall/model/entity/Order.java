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
@TableName("tb_mall_order")
public class Order implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 订单ID
     */
    @TableId(value = "order_id", type = IdType.AUTO)
    private Long orderId;

    /**
     * 订单编号
     */
    private String orderSn;

    /**
     * 用户ID
     */
    private Long userId;

    /**
     * 订单总金额
     */
    private BigDecimal orderTotalAmount;

    /**
     * 使用的优惠券ID
     */
    private Long orderCouponId;

    /**
     * 参与的活动ID
     */
    private Long orderPromotionId;

    /**
     * 优惠金额
     */
    private BigDecimal orderDiscountAmount;

    /**
     * 订单状态 0-待支付 1-已支付 2-已发货 3-已完成 4-已取消
     */
    private Byte orderStatus;

    /**
     * 支付方式 0-未支付 1-支付宝 2-微信 3-银行卡
     */
    private Byte orderPayType;

    /**
     * 收货人姓名
     */
    private String orderReceiverName;

    /**
     * 收货人手机号
     */
    private String orderReceiverPhone;

    /**
     * 收货地址
     */
    private String orderReceiverAddress;

    /**
     * 订单备注
     */
    private String orderRemark;

    /**
     * 是否删除 0-未删除 1-已删除
     */
    private Byte deleteFlag;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;
}
