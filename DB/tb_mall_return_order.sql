CREATE TABLE tb_mall_return_order (
                                 return_order_id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '退货订单ID',
                                 order_id BIGINT NOT NULL COMMENT '原订单ID',
                                 user_id BIGINT NOT NULL COMMENT '用户ID',
                                 return_reason VARCHAR(255) COMMENT '退货原因',
                                 return_status TINYINT DEFAULT 0 COMMENT '退货状态 0-申请中 1-审核通过 2-已退货 3-已拒绝',
                                 return_amount DECIMAL(10,2) COMMENT '退货金额',
                                 delete_flag TINYINT DEFAULT 0 COMMENT '是否删除 0-未删除 1-已删除',
                                 create_time DATETIME DEFAULT CURRENT_TIMESTAMP,
                                 update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);