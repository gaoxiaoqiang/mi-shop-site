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
@TableName("tb_mall_banner")
@Schema(name = "Banner", description = "$!{table.comment}")
public class Banner implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(description = "轮播ID")
    @TableId(value = "banner_id", type = IdType.AUTO)
    private Long bannerId;

    @Schema(description = "轮播图片")
    private String bannerImage;

    @Schema(description = "跳转链接")
    private String bannerLink;

    @Schema(description = "排序")
    private Integer bannerSort;

    @Schema(description = "状态 1-显示 0-隐藏")
    private Byte bannerStatus;

    @Schema(description = "是否删除 0-未删除 1-已删除")
    private Byte deleteFlag;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;
}
