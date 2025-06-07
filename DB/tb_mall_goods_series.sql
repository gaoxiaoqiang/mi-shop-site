CREATE TABLE tb_mall_goods_series (
    series_id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '系列ID',
    series_name VARCHAR(50) NOT NULL COMMENT '系列名称', -- 例如：小米15系列
    series_desc TEXT COMMENT '系列描述',
    series_image VARCHAR(255) COMMENT '系列主图',
    series_status TINYINT DEFAULT 1 COMMENT '状态 1-显示 0-隐藏',
    delete_flag TINYINT DEFAULT 0 COMMENT '是否删除 0-未删除 1-已删除',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT='商品系列表';