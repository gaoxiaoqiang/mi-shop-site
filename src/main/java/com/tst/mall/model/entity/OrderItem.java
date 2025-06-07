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
 * 订单商品详情表
 * </p>
 *
 * @author gxq
 * @since 2025-06-05
 */
@Getter
@Setter
@TableName("tb_mall_order_item")
@Schema(name = "OrderItem", description = "$!{table.comment}")
public class OrderItem implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(description = "订单商品详情ID")
    @TableId(value = "order_item_id", type = IdType.AUTO)
    private Long orderItemId;

    @Schema(description = "订单ID")
    private Long orderId;

    @Schema(description = "商品系列ID")
    private Long seriesId;

    @Schema(description = "商品型号ID")
    private Long modelId;

    @Schema(description = "商品SKU ID")
    private Long skuId;

    @Schema(description = "型号名称")
    private String modelName;

    @Schema(description = "SKU名称")
    private String skuName;

    @Schema(description = "商品主图")
    private String goodsMainImage;

    @Schema(description = "原始单价")
    private BigDecimal originalPrice;

    @Schema(description = "实际单价（考虑活动后）")
    private BigDecimal actualPrice;

    @Schema(description = "购买数量")
    private Integer goodsNum;

    @Schema(description = "该商品总价")
    private BigDecimal goodsTotalPrice;

    @Schema(description = "参与的活动ID")
    private Long promotionId;

    @Schema(description = "活动优惠金额")
    private BigDecimal promotionAmount;

    @Schema(description = "是否删除 0-未删除 1-已删除")
    private Byte deleteFlag;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;
}
