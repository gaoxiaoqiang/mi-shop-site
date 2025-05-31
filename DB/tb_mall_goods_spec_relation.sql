CREATE TABLE tb_mall_goods_spec_relation (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    goods_id BIGINT NOT NULL COMMENT '商品ID',
    spec_id BIGINT NOT NULL COMMENT '规格ID',
    value_id BIGINT NOT NULL COMMENT '规格值ID',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    UNIQUE KEY uk_goods_spec_value(goods_id, spec_id, value_id)
) COMMENT='商品-规格-规格值关系表';