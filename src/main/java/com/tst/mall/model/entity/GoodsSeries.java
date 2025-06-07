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
 * 商品系列表
 * </p>
 *
 * @author gxq
 * @since 2025-06-05
 */
@Getter
@Setter
@TableName("tb_mall_goods_series")
@Schema(name = "GoodsSeries", description = "$!{table.comment}")
public class GoodsSeries implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(description = "系列ID")
    @TableId(value = "series_id", type = IdType.AUTO)
    private Long seriesId;

    @Schema(description = "系列名称")
    private String seriesName;

    @Schema(description = "系列描述")
    private String seriesDesc;

    @Schema(description = "系列主图")
    private String seriesImage;

    @Schema(description = "状态 1-显示 0-隐藏")
    private Byte seriesStatus;

    @Schema(description = "是否删除 0-未删除 1-已删除")
    private Byte deleteFlag;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;
}
