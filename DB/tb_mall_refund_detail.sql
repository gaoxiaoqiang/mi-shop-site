CREATE TABLE tb_mall_refund_detail (
                                  refund_id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '退款ID',
                                  return_order_id BIGINT NOT NULL COMMENT '退货订单ID',
                                  order_id BIGINT NOT NULL COMMENT '原订单ID',
                                  refund_amount DECIMAL(10,2) NOT NULL COMMENT '退款金额',
                                  refund_status TINYINT DEFAULT 0 COMMENT '退款状态 0-待处理 1-退款中 2-退款成功 3-退款失败',
                                  refund_method VARCHAR(50) COMMENT '退款方式',
                                  refund_time DATETIME COMMENT '退款时间',
                                  delete_flag TINYINT DEFAULT 0 COMMENT '是否删除 0-未删除 1-已删除',
                                  create_time DATETIME DEFAULT CURRENT_TIMESTAMP,
                                  update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);