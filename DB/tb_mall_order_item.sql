CREATE TABLE tb_mall_order_item (
                               order_item_id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '订单商品详情ID',
                               order_id BIGINT NOT NULL COMMENT '订单ID',
                               goods_id BIGINT NOT NULL COMMENT '商品ID',
                               goods_name VARCHAR(100) NOT NULL COMMENT '商品名称',
                               goods_main_image VARCHAR(255) COMMENT '商品主图',
                               goods_price DECIMAL(10,2) NOT NULL COMMENT '商品单价',
                               goods_num INT NOT NULL COMMENT '购买数量',
                               goods_total_price DECIMAL(10,2) NOT NULL COMMENT '该商品总价',
                               delete_flag TINYINT DEFAULT 0 COMMENT '是否删除 0-未删除 1-已删除',
                               create_time DATETIME DEFAULT CURRENT_TIMESTAMP,
                               update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                               INDEX idx_order_id (order_id)
);