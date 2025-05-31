
/**
  活动与商品关联表（tb_promotion_goods）
 */
CREATE TABLE tb_mall_promotion_goods (

                                    promotion_goods_id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '活动商品关联ID',
                                    promotion_id BIGINT NOT NULL COMMENT '活动ID',
                                    goods_id BIGINT NOT NULL COMMENT '商品ID',
                                    delete_flag TINYINT DEFAULT 0 COMMENT '是否删除 0-未删除 1-已删除'
);
