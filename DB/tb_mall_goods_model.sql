CREATE TABLE tb_mall_goods_model (
    model_id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '型号ID',
    series_id BIGINT COMMENT '系列ID，可以为空表示独立机型',
    model_name VARCHAR(100) NOT NULL COMMENT '型号名称', -- 例如：小米15 Pro
    model_subtitle VARCHAR(255) COMMENT '副标题',
    base_price DECIMAL(10,2) NOT NULL COMMENT '基础价格',
    model_desc TEXT COMMENT '型号描述',
    model_image VARCHAR(255) COMMENT '型号主图',
    model_images TEXT COMMENT '型号图片列表，逗号分隔',
    model_status TINYINT DEFAULT 1 COMMENT '状态 1-上架 0-下架',
    delete_flag TINYINT DEFAULT 0 COMMENT '是否删除 0-未删除 1-已删除',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT='商品型号表';