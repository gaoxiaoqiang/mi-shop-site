CREATE TABLE tb_mall_user_coupon (
                                user_coupon_id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '用户优惠券ID',
                                user_id BIGINT NOT NULL COMMENT '用户ID',
                                coupon_id BIGINT NOT NULL COMMENT '优惠券ID',
                                coupon_status TINYINT DEFAULT 0 COMMENT '状态 0-未使用 1-已使用 2-已过期',
                                get_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '领取时间',
                                use_time DATETIME COMMENT '使用时间',
                                expire_time DATETIME COMMENT '过期时间',
                                delete_flag TINYINT DEFAULT 0 COMMENT '是否删除 0-未删除 1-已删除'
);