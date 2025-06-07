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
 * 
 * </p>
 *
 * @author gxq
 * @since 2025-06-05
 */
@Getter
@Setter
@TableName("tb_mall_promotion")
@Schema(name = "Promotion", description = "$!{table.comment}")
public class Promotion implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(description = "活动ID")
    @TableId(value = "promotion_id", type = IdType.AUTO)
    private Long promotionId;

    @Schema(description = "活动名称")
    private String promotionName;

    @Schema(description = "类型 1-满减 2-折扣 3-赠品")
    private Byte promotionType;

    @Schema(description = "活动描述")
    private String promotionDesc;

    @Schema(description = "开始时间")
    private LocalDateTime promotionStartTime;

    @Schema(description = "结束时间")
    private LocalDateTime promotionEndTime;

    @Schema(description = "状态 1-启用 0-禁用")
    private Byte promotionStatus;

    @Schema(description = "是否删除 0-未删除 1-已删除")
    private Byte deleteFlag;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;
}
