CREATE TABLE tb_mall_promotion (
                              promotion_id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '活动ID',
                              promotion_name VARCHAR(100) NOT NULL COMMENT '活动名称',
                              promotion_type TINYINT DEFAULT 1 COMMENT '类型 1-满减 2-折扣 3-赠品',
                              promotion_desc VARCHAR(255) COMMENT '活动描述',
                              promotion_start_time DATETIME COMMENT '开始时间',
                              promotion_end_time DATETIME COMMENT '结束时间',
                              promotion_status TINYINT DEFAULT 1 COMMENT '状态 1-启用 0-禁用',
                              delete_flag TINYINT DEFAULT 0 COMMENT '是否删除 0-未删除 1-已删除',
                              create_time DATETIME DEFAULT CURRENT_TIMESTAMP,
                              update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);