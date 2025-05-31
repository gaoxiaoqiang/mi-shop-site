package com.tst.mall.model.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;

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
@TableName("tb_mall_promotion_goods")
public class PromotionGoods implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 活动商品关联ID
     */
    @TableId(value = "promotion_goods_id", type = IdType.AUTO)
    private Long promotionGoodsId;

    /**
     * 活动ID
     */
    private Long promotionId;

    /**
     * 商品ID
     */
    private Long goodsId;

    /**
     * 是否删除 0-未删除 1-已删除
     */
    private Byte deleteFlag;
}
