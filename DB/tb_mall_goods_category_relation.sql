CREATE TABLE tb_mall_goods_category_relation (
    id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '主键ID',
    goods_id BIGINT NOT NULL COMMENT '商品ID',
    category_id BIGINT NOT NULL COMMENT '分类ID',
    delete_flag TINYINT DEFAULT 0 COMMENT '是否删除 0-未删除 1-已删除',
                           create_time DATETIME DEFAULT CURRENT_TIMESTAMP,
                           update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    UNIQUE KEY uk_goods_category(goods_id, category_id)
) COMMENT='商品-分类关系表';