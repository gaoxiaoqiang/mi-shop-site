package com.tst.mall.model.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
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
@TableName("tb_mall_promotion_goods")
@Schema(name = "PromotionGoods", description = "$!{table.comment}")
public class PromotionGoods implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(description = "活动商品关联ID")
    @TableId(value = "promotion_goods_id", type = IdType.AUTO)
    private Long promotionGoodsId;

    @Schema(description = "活动ID")
    private Long promotionId;

    @Schema(description = "商品ID")
    private Long goodsId;

    @Schema(description = "是否删除 0-未删除 1-已删除")
    private Byte deleteFlag;
}
