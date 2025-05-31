package com.tst.mall.model.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.math.BigDecimal;
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
@TableName("tb_mall_goods")
public class Goods implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 商品ID
     */
    @TableId(value = "goods_id", type = IdType.AUTO)
    private Long goodsId;

    /**
     * 商品名称
     */
    private String goodsName;

    /**
     * 副标题
     */
    private String goodsSubtitle;

    /**
     * 价格
     */
    private BigDecimal goodsPrice;

    /**
     * 库存
     */
    private Integer goodsStock;

    /**
     * 主图
     */
    private String goodsMainImage;

    /**
     * 图片列表，逗号分隔
     */
    private String goodsImages;

    /**
     * 所属横向分类ID
     */
    private Long goodsCategoryId;

    /**
     * 所属纵向导航分类ID
     */
    private Long goodsNavCategoryId;

    /**
     * 状态 1-上架 0-下架
     */
    private Byte goodsStatus;

    /**
     * 是否删除 0-未删除 1-已删除
     */
    private Byte deleteFlag;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;
}
