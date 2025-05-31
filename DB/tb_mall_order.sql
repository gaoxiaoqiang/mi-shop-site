CREATE TABLE tb_mall_order (
                          order_id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '订单ID',
                          order_sn VARCHAR(64) NOT NULL COMMENT '订单编号',
                          user_id BIGINT NOT NULL COMMENT '用户ID',
                          order_total_amount DECIMAL(10,2) NOT NULL COMMENT '订单总金额',
                          order_coupon_id BIGINT COMMENT '使用的优惠券ID',
                          order_promotion_id BIGINT COMMENT '参与的活动ID',
                          order_discount_amount DECIMAL(10,2) DEFAULT 0 COMMENT '优惠金额',
                          order_status TINYINT DEFAULT 0 COMMENT '订单状态 0-待支付 1-已支付 2-已发货 3-已完成 4-已取消',
                          order_pay_type TINYINT DEFAULT 0 COMMENT '支付方式 0-未支付 1-支付宝 2-微信 3-银行卡',
                          order_receiver_name VARCHAR(50) COMMENT '收货人姓名',
                          order_receiver_phone VARCHAR(20) COMMENT '收货人手机号',
                          order_receiver_address VARCHAR(255) COMMENT '收货地址',
                          order_remark VARCHAR(255) COMMENT '订单备注',
                          delete_flag TINYINT DEFAULT 0 COMMENT '是否删除 0-未删除 1-已删除',
                          create_time DATETIME DEFAULT CURRENT_TIMESTAMP,
                          update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);