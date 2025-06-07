package com.tst.mall.model.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.List;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

/**
 * <p>
 * 商品分类表，支持一二级分类，二级分类有图片
 * </p>
 *
 * @author gxq
 * @since 2025-06-05
 */
@Getter
@Setter
@TableName("tb_mall_goods_category")
@Schema(name = "GoodsCategory", description = "$!{table.comment}")
public class GoodsCategory implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(description = "分类ID")
    @TableId(value = "category_id", type = IdType.AUTO)
    private Long categoryId;

    @Schema(description = "父分类ID，0为一级分类")
    private Long parentId;

    @Schema(description = "分类名称")
    private String categoryName;

    @Schema(description = "分类图片URL")
    private String categoryImage;

    @Schema(description = "排序")
    private Integer categorySort;

    @Schema(description = "状态 1-显示 0-隐藏")
    private Byte categoryStatus;

    @Schema(description = "是否删除 0-未删除 1-已删除")
    private Byte deleteFlag;


    private LocalDateTime createTime;

    private LocalDateTime updateTime;

    @TableField(exist = false)
    private List<GoodsCategory> children;
}
