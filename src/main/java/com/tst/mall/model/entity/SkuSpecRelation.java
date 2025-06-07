package com.tst.mall.model.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.time.LocalDateTime;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

/**
 * <p>
 * SKU规格关系表
 * </p>
 *
 * @author gxq
 * @since 2025-06-05
 */
@Getter
@Setter
@TableName("tb_mall_sku_spec_relation")
@Schema(name = "SkuSpecRelation", description = "$!{table.comment}")
public class SkuSpecRelation implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(description = "关系ID")
    @TableId(value = "relation_id", type = IdType.AUTO)
    private Long relationId;

    @Schema(description = "SKU ID")
    private Long skuId;

    @Schema(description = "规格ID")
    private Long specId;

    @Schema(description = "规格值ID")
    private Long valueId;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;
}
