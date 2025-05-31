package com.tst.mall.model.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * <p>
 * 
 * </p>
 *
 * @author gxq
 * @since 2025-05-28
 */
@Getter
@Setter
@ToString
@TableName("tb_mall_ad")
public class Ad implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 广告ID
     */
    @TableId(value = "ad_id", type = IdType.AUTO)
    private Long adId;

    /**
     * 广告标题
     */
    private String adTitle;

    /**
     * 广告图片
     */
    private String adImage;

    /**
     * 跳转链接
     */
    private String adLink;

    /**
     * 广告位置（如首页顶部、侧边栏等）
     */
    private String adPosition;

    /**
     * 排序
     */
    private Integer adSort;

    /**
     * 状态 1-显示 0-隐藏
     */
    private Byte adStatus;

    /**
     * 是否删除 0-未删除 1-已删除
     */
    private Byte deleteFlag;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;
}
