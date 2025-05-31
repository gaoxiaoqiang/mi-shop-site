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
 * 商品-规格-规格值关系表
 * </p>
 *
 * @author gxq
 * @since 2025-05-28
 */
@Getter
@Setter
@ToString
@TableName("tb_mall_goods_spec_relation")
public class GoodsSpecRelation implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 商品ID
     */
    private Long goodsId;

    /**
     * 规格ID
     */
    private Long specId;

    /**
     * 规格值ID
     */
    private Long valueId;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;
}
