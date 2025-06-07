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
 * 订单退货表
 * </p>
 *
 * @author gxq
 * @since 2025-06-05
 */
@Getter
@Setter
@TableName("tb_mall_return_order")
@Schema(name = "ReturnOrder", description = "$!{table.comment}")
public class ReturnOrder implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(description = "退货订单ID")
    @TableId(value = "return_order_id", type = IdType.AUTO)
    private Long returnOrderId;

    @Schema(description = "退货单号")
    private String returnOrderSn;

    @Schema(description = "原订单ID")
    private Long orderId;

    @Schema(description = "订单商品ID")
    private Long orderItemId;

    @Schema(description = "用户ID")
    private Long userId;

    @Schema(description = "商品SKU ID")
    private Long skuId;

    @Schema(description = "退货数量")
    private Integer returnNum;

    @Schema(description = "退货金额")
    private BigDecimal returnAmount;

    @Schema(description = "退货原因类型 1-质量问题 2-尺寸不合适 3-颜色与描述不符 4-收到商品与描述不符 5-其他")
    private Byte returnReasonType;

    @Schema(description = "退货原因描述")
    private String returnReason;

    @Schema(description = "退货状态 0-申请中 1-待寄回 2-已寄回 3-待验货 4-验货通过 5-验货不通过 6-已拒绝")
    private Byte returnStatus;

    @Schema(description = "退货快递公司")
    private String returnExpressCompany;

    @Schema(description = "退货快递单号")
    private String returnExpressNumber;

    @Schema(description = "退货地址")
    private String returnAddress;

    @Schema(description = "退货联系人")
    private String returnContact;

    @Schema(description = "退货联系电话")
    private String returnPhone;

    @Schema(description = "管理员备注")
    private String adminNote;

    @Schema(description = "处理时间")
    private LocalDateTime handleTime;

    @Schema(description = "处理人")
    private String handleMan;

    @Schema(description = "收货时间")
    private LocalDateTime receiveTime;

    @Schema(description = "收货人")
    private String receiveMan;

    @Schema(description = "是否删除 0-未删除 1-已删除")
    private Byte deleteFlag;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;
}
