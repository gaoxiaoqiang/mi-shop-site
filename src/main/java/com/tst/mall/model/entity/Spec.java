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
 * 商品规格表
 * </p>
 *
 * @author gxq
 * @since 2025-05-28
 */
@Getter
@Setter
@ToString
@TableName("tb_mall_spec")
public class Spec implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 规格ID
     */
    @TableId(value = "spec_id", type = IdType.AUTO)
    private Long specId;

    /**
     * 规格名称
     */
    private String specName;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;
}
