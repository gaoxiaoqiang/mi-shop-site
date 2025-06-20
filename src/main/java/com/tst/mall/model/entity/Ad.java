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
@TableName("tb_mall_ad")
@Schema(name = "Ad", description = "$!{table.comment}")
public class Ad implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(description = "广告ID")
    @TableId(value = "ad_id", type = IdType.AUTO)
    private Long adId;

    @Schema(description = "广告标题")
    private String adTitle;

    @Schema(description = "广告图片")
    private String adImage;

    @Schema(description = "跳转链接")
    private String adLink;

    @Schema(description = "广告位置（如首页顶部、侧边栏等）")
    private String adPosition;

    @Schema(description = "排序")
    private Integer adSort;

    @Schema(description = "状态 1-显示 0-隐藏")
    private Byte adStatus;

    @Schema(description = "是否删除 0-未删除 1-已删除")
    private Byte deleteFlag;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;
}
