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
 * 商品型号表
 * </p>
 *
 * @author gxq
 * @since 2025-06-05
 */
@Getter
@Setter
@TableName("tb_mall_goods_model")
@Schema(name = "GoodsModel", description = "$!{table.comment}")
public class GoodsModel implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(description = "型号ID")
    @TableId(value = "model_id", type = IdType.AUTO)
    private Long modelId;

    @Schema(description = "系列ID，可以为空表示独立机型")
    private Long seriesId;

    @Schema(description = "型号名称")
    private String modelName;

    @Schema(description = "副标题")
    private String modelSubtitle;

    @Schema(description = "基础价格")
    private BigDecimal basePrice;

    @Schema(description = "型号描述")
    private String modelDesc;

    @Schema(description = "型号主图")
    private String modelImage;

    @Schema(description = "型号图片列表，逗号分隔")
    private String modelImages;

    @Schema(description = "状态 1-上架 0-下架")
    private Byte modelStatus;

    @Schema(description = "是否删除 0-未删除 1-已删除")
    private Byte deleteFlag;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;
}
