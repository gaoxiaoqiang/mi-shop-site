CREATE TABLE tb_mall_goods (
                       goods_id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '商品ID',
                       goods_name VARCHAR(100) NOT NULL COMMENT '商品名称',
                       goods_subtitle VARCHAR(255) COMMENT '副标题',
                       goods_price DECIMAL(10,2) NOT NULL COMMENT '价格',
                       goods_stock INT DEFAULT 0 COMMENT '库存',
                       goods_main_image VARCHAR(255) COMMENT '主图',
                       goods_images TEXT COMMENT '图片列表，逗号分隔',
                       goods_status TINYINT DEFAULT 1 COMMENT '状态 1-上架 0-下架',
                       delete_flag TINYINT DEFAULT 0 COMMENT '是否删除 0-未删除 1-已删除',
                       create_time DATETIME DEFAULT CURRENT_TIMESTAMP,
                       update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);