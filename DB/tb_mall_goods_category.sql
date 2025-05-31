CREATE TABLE tb_mall_goods_category (
    category_id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '分类ID',
    parent_id BIGINT DEFAULT 0 COMMENT '父分类ID，0为一级分类',
    category_name VARCHAR(50) NOT NULL COMMENT '分类名称',
    category_image VARCHAR(255) COMMENT '分类图片URL',
    category_sort INT DEFAULT 0 COMMENT '排序',
    category_status TINYINT DEFAULT 1 COMMENT '状态 1-显示 0-隐藏',
    delete_flag TINYINT DEFAULT 0 COMMENT '是否删除 0-未删除 1-已删除',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT='商品分类表，支持一二级分类，二级分类有图片';