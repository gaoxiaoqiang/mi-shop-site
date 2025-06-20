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
 * 商品规格值表
 * </p>
 *
 * @author gxq
 * @since 2025-06-05
 */
@Getter
@Setter
@TableName("tb_mall_spec_value")
@Schema(name = "SpecValue", description = "$!{table.comment}")
public class SpecValue implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(description = "规格值ID")
    @TableId(value = "value_id", type = IdType.AUTO)
    private Long valueId;

    @Schema(description = "规格ID")
    private Long specId;

    @Schema(description = "规格值名称")
    private String valueName;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;
}
