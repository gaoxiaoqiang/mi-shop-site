package com.tst.mall.model.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.handlers.JacksonTypeHandler;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serial;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.List;

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
@TableName("tb_mall_goods_category")
public class GoodsCategory implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    /**
     * 分类ID
     */
    @TableId(value = "category_id", type = IdType.AUTO)
    private Long categoryId;

    private  Long parentId;

    /**
     * 分类名称
     */
    private String categoryName;

    private  Long categoryImage;

    /**
     * 排序
     */
    private Integer categorySort;

    /**
     * 状态 1-显示 0-隐藏
     */
    private Byte categoryStatus;

    /**
     * 是否删除 0-未删除 1-已删除
     */
    private Byte deleteFlag;


    private LocalDateTime createTime;

    private LocalDateTime updateTime;

    @TableField(exist = false)
    private List<GoodsCategory> children;
}
