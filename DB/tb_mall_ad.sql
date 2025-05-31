CREATE TABLE tb_mall_ad (
                          ad_id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '广告ID',
                          ad_title VARCHAR(100) NOT NULL COMMENT '广告标题',
                          ad_image VARCHAR(255) NOT NULL COMMENT '广告图片',
                          ad_link VARCHAR(255) COMMENT '跳转链接',
                          ad_position VARCHAR(50) COMMENT '广告位置（如首页顶部、侧边栏等）',
                          ad_sort INT DEFAULT 0 COMMENT '排序',
                          ad_status TINYINT DEFAULT 1 COMMENT '状态 1-显示 0-隐藏',
                          delete_flag TINYINT DEFAULT 0 COMMENT '是否删除 0-未删除 1-已删除',
                          create_time DATETIME DEFAULT CURRENT_TIMESTAMP,
                          update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);