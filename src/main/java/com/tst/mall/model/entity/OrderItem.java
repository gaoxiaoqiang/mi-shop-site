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
@TableName("tb_mall_order_item")
public class OrderItem implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 订单商品详情ID
     */
    @TableId(value = "order_item_id", type = IdType.AUTO)
    private Long orderItemId;

    /**
     * 订单ID
     */
    private Long orderId;

    /**
     * 商品ID
     */
    private Long goodsId;

    /**
     * 商品名称
     */
    private String goodsName;

    /**
     * 商品主图
     */
    private String goodsMainImage;

    /**
     * 商品单价
     */
    private BigDecimal goodsPrice;

    /**
     * 购买数量
     */
    private Integer goodsNum;

    /**
     * 该商品总价
     */
    private BigDecimal goodsTotalPrice;

    /**
     * 是否删除 0-未删除 1-已删除
     */
    private Byte deleteFlag;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;
}
