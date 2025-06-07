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
 * 商品SKU表
 * </p>
 *
 * @author gxq
 * @since 2025-06-05
 */
@Getter
@Setter
@TableName("tb_mall_goods_sku")
@Schema(name = "GoodsSku", description = "$!{table.comment}")
public class GoodsSku implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(description = "SKU ID")
    @TableId(value = "sku_id", type = IdType.AUTO)
    private Long skuId;

    @Schema(description = "型号ID")
    private Long modelId;

    @Schema(description = "SKU名称")
    private String skuName;

    @Schema(description = "SKU价格")
    private BigDecimal skuPrice;

    @Schema(description = "SKU库存")
    private Integer skuStock;

    @Schema(description = "SKU编码")
    private String skuCode;

    @Schema(description = "状态 1-上架 0-下架")
    private Byte skuStatus;

    @Schema(description = "是否删除 0-未删除 1-已删除")
    private Byte deleteFlag;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;
}
