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
@TableName("tb_mall_promotion")
public class Promotion implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 活动ID
     */
    @TableId(value = "promotion_id", type = IdType.AUTO)
    private Long promotionId;

    /**
     * 活动名称
     */
    private String promotionName;

    /**
     * 类型 1-满减 2-折扣 3-赠品
     */
    private Byte promotionType;

    /**
     * 活动描述
     */
    private String promotionDesc;

    /**
     * 开始时间
     */
    private LocalDateTime promotionStartTime;

    /**
     * 结束时间
     */
    private LocalDateTime promotionEndTime;

    /**
     * 状态 1-启用 0-禁用
     */
    private Byte promotionStatus;

    /**
     * 是否删除 0-未删除 1-已删除
     */
    private Byte deleteFlag;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;
}
