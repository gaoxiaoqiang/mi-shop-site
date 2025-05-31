CREATE TABLE tb_mall_coupon (
                           coupon_id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '优惠券ID',
                           coupon_name VARCHAR(100) NOT NULL COMMENT '优惠券名称',
                           coupon_type TINYINT DEFAULT 1 COMMENT '类型 1-满减 2-折扣 3-现金券',
                           coupon_amount DECIMAL(10,2) COMMENT '面额/折扣',
                           coupon_min_amount DECIMAL(10,2) COMMENT '使用门槛',
                           coupon_start_time DATETIME COMMENT '生效时间',
                           coupon_end_time DATETIME COMMENT '失效时间',
                           coupon_total INT DEFAULT 0 COMMENT '发放总量',
                           coupon_limit INT DEFAULT 1 COMMENT '每人限领',
                           coupon_status TINYINT DEFAULT 1 COMMENT '状态 1-启用 0-禁用',
                           delete_flag TINYINT DEFAULT 0 COMMENT '是否删除 0-未删除 1-已删除',
                           create_time DATETIME DEFAULT CURRENT_TIMESTAMP,
                           update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);