CREATE TABLE tb_mall_banner (
                              banner_id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '轮播ID',
                              banner_image VARCHAR(255) NOT NULL COMMENT '轮播图片',
                              banner_link VARCHAR(255) COMMENT '跳转链接',
                              banner_sort INT DEFAULT 0 COMMENT '排序',
                              banner_status TINYINT DEFAULT 1 COMMENT '状态 1-显示 0-隐藏',
                              delete_flag TINYINT DEFAULT 0 COMMENT '是否删除 0-未删除 1-已删除',
                              create_time DATETIME DEFAULT CURRENT_TIMESTAMP,
                              update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);