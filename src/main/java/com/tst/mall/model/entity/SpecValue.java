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
 * 商品规格值表
 * </p>
 *
 * @author gxq
 * @since 2025-05-28
 */
@Getter
@Setter
@ToString
@TableName("tb_mall_spec_value")
public class SpecValue implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 规格值ID
     */
    @TableId(value = "value_id", type = IdType.AUTO)
    private Long valueId;

    /**
     * 规格ID
     */
    private Long specId;

    /**
     * 规格值名称
     */
    private String valueName;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;
}
