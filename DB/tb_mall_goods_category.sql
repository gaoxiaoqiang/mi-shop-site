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





-- 分类表
-- 一级分类（parent_id=0）
INSERT INTO tb_mall_goods_category (parent_id, category_name, category_image, category_sort, category_status, delete_flag, create_time, update_time)
VALUES
    (0, '手机', NULL, 1, 1, 0, NOW(), NOW()),
    (0, '家电', NULL, 2, 1, 0, NOW(), NOW()),
    (0, '电视', NULL, 3, 1, 0, NOW(), NOW()),
    (0, '笔记本', NULL, 4, 1, 0, NOW(), NOW()),
    (0, '出行 穿戴', NULL, 5, 1, 0, NOW(), NOW()),
    (0, '耳机 音箱', NULL, 6, 1, 0, NOW(), NOW()),
    (0, '健康 儿童', NULL, 7, 1, 0, NOW(), NOW()),
    (0, '生活 箱包', NULL, 8, 1, 0, NOW(), NOW()),
    (0, '智能 路由', NULL, 9, 1, 0, NOW(), NOW()),
    (0, '电源 配件', NULL, 10, 1, 0, NOW(), NOW()),
    (0, '家居 家装', NULL, 11, 1, 0, NOW(), NOW()),
    (0, '服务', NULL, 12, 1, 0, NOW(), NOW());

-- 假设一级分类ID依次为1~12

-- 二级分类（每个一级下12条，parent_id=对应一级分类ID）
INSERT INTO tb_mall_goods_category (parent_id, category_name, category_image, category_sort, category_status, delete_flag, create_time, update_time)
VALUES
-- 手机
(1, '小米手机', NULL, 1, 1, 0, NOW(), NOW()),
(1, 'Redmi手机', NULL, 2, 1, 0, NOW(), NOW()),
(1, '游戏手机', NULL, 3, 1, 0, NOW(), NOW()),
(1, '折叠屏手机', NULL, 4, 1, 0, NOW(), NOW()),
(1, '5G手机', NULL, 5, 1, 0, NOW(), NOW()),
(1, '拍照手机', NULL, 6, 1, 0, NOW(), NOW()),
(1, '大电池手机', NULL, 7, 1, 0, NOW(), NOW()),
(1, '高刷屏手机', NULL, 8, 1, 0, NOW(), NOW()),
(1, '学生手机', NULL, 9, 1, 0, NOW(), NOW()),
(1, '老人手机', NULL, 10, 1, 0, NOW(), NOW()),
(1, '商务手机', NULL, 11, 1, 0, NOW(), NOW()),
(1, '旗舰手机', NULL, 12, 1, 0, NOW(), NOW()),

-- 家电
(2, '冰箱', NULL, 1, 1, 0, NOW(), NOW()),
(2, '洗衣机', NULL, 2, 1, 0, NOW(), NOW()),
(2, '空调', NULL, 3, 1, 0, NOW(), NOW()),
(2, '热水器', NULL, 4, 1, 0, NOW(), NOW()),
(2, '扫地机器人', NULL, 5, 1, 0, NOW(), NOW()),
(2, '微波炉', NULL, 6, 1, 0, NOW(), NOW()),
(2, '电饭煲', NULL, 7, 1, 0, NOW(), NOW()),
(2, '油烟机', NULL, 8, 1, 0, NOW(), NOW()),
(2, '燃气灶', NULL, 9, 1, 0, NOW(), NOW()),
(2, '消毒柜', NULL, 10, 1, 0, NOW(), NOW()),
(2, '净水器', NULL, 11, 1, 0, NOW(), NOW()),
(2, '饮水机', NULL, 12, 1, 0, NOW(), NOW()),

-- 电视
(3, '小米电视', NULL, 1, 1, 0, NOW(), NOW()),
(3, 'Redmi电视', NULL, 2, 1, 0, NOW(), NOW()),
(3, 'OLED电视', NULL, 3, 1, 0, NOW(), NOW()),
(3, '4K电视', NULL, 4, 1, 0, NOW(), NOW()),
(3, '8K电视', NULL, 5, 1, 0, NOW(), NOW()),
(3, '大屏电视', NULL, 6, 1, 0, NOW(), NOW()),
(3, '小屏电视', NULL, 7, 1, 0, NOW(), NOW()),
(3, '智能投影', NULL, 8, 1, 0, NOW(), NOW()),
(3, '电视盒子', NULL, 9, 1, 0, NOW(), NOW()),
(3, '电视音响', NULL, 10, 1, 0, NOW(), NOW()),
(3, '电视挂架', NULL, 11, 1, 0, NOW(), NOW()),
(3, '电视遥控器', NULL, 12, 1, 0, NOW(), NOW()),

-- 笔记本
(4, '小米笔记本', NULL, 1, 1, 0, NOW(), NOW()),
(4, 'RedmiBook', NULL, 2, 1, 0, NOW(), NOW()),
(4, '游戏本', NULL, 3, 1, 0, NOW(), NOW()),
(4, '轻薄本', NULL, 4, 1, 0, NOW(), NOW()),
(4, '商务本', NULL, 5, 1, 0, NOW(), NOW()),
(4, '学生本', NULL, 6, 1, 0, NOW(), NOW()),
(4, '二合一本', NULL, 7, 1, 0, NOW(), NOW()),
(4, '高性能本', NULL, 8, 1, 0, NOW(), NOW()),
(4, '触控本', NULL, 9, 1, 0, NOW(), NOW()),
(4, '办公本', NULL, 10, 1, 0, NOW(), NOW()),
(4, '超极本', NULL, 11, 1, 0, NOW(), NOW()),
(4, '平板电脑', NULL, 12, 1, 0, NOW(), NOW()),

-- 出行 穿戴
(5, '手环', NULL, 1, 1, 0, NOW(), NOW()),
(5, '手表', NULL, 2, 1, 0, NOW(), NOW()),
(5, '电动滑板车', NULL, 3, 1, 0, NOW(), NOW()),
(5, '平衡车', NULL, 4, 1, 0, NOW(), NOW()),
(5, '自行车', NULL, 5, 1, 0, NOW(), NOW()),
(5, '行李箱', NULL, 6, 1, 0, NOW(), NOW()),
(5, '背包', NULL, 7, 1, 0, NOW(), NOW()),
(5, '运动鞋', NULL, 8, 1, 0, NOW(), NOW()),
(5, '智能鞋垫', NULL, 9, 1, 0, NOW(), NOW()),
(5, '智能头盔', NULL, 10, 1, 0, NOW(), NOW()),
(5, '骑行装备', NULL, 11, 1, 0, NOW(), NOW()),
(5, '智能眼镜', NULL, 12, 1, 0, NOW(), NOW()),

-- 耳机 音箱
(6, '蓝牙耳机', NULL, 1, 1, 0, NOW(), NOW()),
(6, '有线耳机', NULL, 2, 1, 0, NOW(), NOW()),
(6, '头戴耳机', NULL, 3, 1, 0, NOW(), NOW()),
(6, '真无线耳机', NULL, 4, 1, 0, NOW(), NOW()),
(6, '降噪耳机', NULL, 5, 1, 0, NOW(), NOW()),
(6, '运动耳机', NULL, 6, 1, 0, NOW(), NOW()),
(6, '儿童耳机', NULL, 7, 1, 0, NOW(), NOW()),
(6, '蓝牙音箱', NULL, 8, 1, 0, NOW(), NOW()),
(6, '智能音箱', NULL, 9, 1, 0, NOW(), NOW()),
(6, '家庭影院', NULL, 10, 1, 0, NOW(), NOW()),
(6, '小爱音箱', NULL, 11, 1, 0, NOW(), NOW()),
(6, '随身音箱', NULL, 12, 1, 0, NOW(), NOW()),

-- 健康 儿童
(7, '体脂秤', NULL, 1, 1, 0, NOW(), NOW()),
(7, '血压计', NULL, 2, 1, 0, NOW(), NOW()),
(7, '体温计', NULL, 3, 1, 0, NOW(), NOW()),
(7, '按摩仪', NULL, 4, 1, 0, NOW(), NOW()),
(7, '助眠灯', NULL, 5, 1, 0, NOW(), NOW()),
(7, '健康手环', NULL, 6, 1, 0, NOW(), NOW()),
(7, '健康枕', NULL, 7, 1, 0, NOW(), NOW()),
(7, '血糖仪', NULL, 8, 1, 0, NOW(), NOW()),
(7, '健康秤', NULL, 9, 1, 0, NOW(), NOW()),
(7, '智能跳绳', NULL, 10, 1, 0, NOW(), NOW()),
(7, '儿童手表', NULL, 11, 1, 0, NOW(), NOW()),
(7, '儿童牙刷', NULL, 12, 1, 0, NOW(), NOW()),

-- 生活 箱包
(8, '收纳盒', NULL, 1, 1, 0, NOW(), NOW()),
(8, '洗漱包', NULL, 2, 1, 0, NOW(), NOW()),
(8, '鞋盒', NULL, 3, 1, 0, NOW(), NOW()),
(8, '钥匙包', NULL, 4, 1, 0, NOW(), NOW()),
(8, '钱包', NULL, 5, 1, 0, NOW(), NOW()),
(8, '手提包', NULL, 6, 1, 0, NOW(), NOW()),
(8, '旅行收纳包', NULL, 7, 1, 0, NOW(), NOW()),
(8, '购物袋', NULL, 8, 1, 0, NOW(), NOW()),
(8, '雨伞', NULL, 9, 1, 0, NOW(), NOW()),
(8, '水杯', NULL, 10, 1, 0, NOW(), NOW()),
(8, '保温杯', NULL, 11, 1, 0, NOW(), NOW()),
(8, '餐具', NULL, 12, 1, 0, NOW(), NOW()),

-- 智能 路由
(9, '路由器', NULL, 1, 1, 0, NOW(), NOW()),
(9, 'Mesh路由', NULL, 2, 1, 0, NOW(), NOW()),
(9, '企业路由', NULL, 3, 1, 0, NOW(), NOW()),
(9, '千兆路由', NULL, 4, 1, 0, NOW(), NOW()),
(9, 'WiFi6路由', NULL, 5, 1, 0, NOW(), NOW()),
(9, '家用路由', NULL, 6, 1, 0, NOW(), NOW()),
(9, '智能网关', NULL, 7, 1, 0, NOW(), NOW()),
(9, '信号放大器', NULL, 8, 1, 0, NOW(), NOW()),
(9, '交换机', NULL, 9, 1, 0, NOW(), NOW()),
(9, '智能插座', NULL, 10, 1, 0, NOW(), NOW()),
(9, '智能遥控', NULL, 11, 1, 0, NOW(), NOW()),
(9, '智能门锁', NULL, 12, 1, 0, NOW(), NOW()),

-- 电源 配件
(10, '移动电源', NULL, 1, 1, 0, NOW(), NOW()),
(10, '充电器', NULL, 2, 1, 0, NOW(), NOW()),
(10, '数据线', NULL, 3, 1, 0, NOW(), NOW()),
(10, '无线充', NULL, 4, 1, 0, NOW(), NOW()),
(10, '自拍杆', NULL, 5, 1, 0, NOW(), NOW()),
(10, '手机壳', NULL, 6, 1, 0, NOW(), NOW()),
(10, '钢化膜', NULL, 7, 1, 0, NOW(), NOW()),
(10, '蓝牙音箱', NULL, 8, 1, 0, NOW(), NOW()),
(10, '鼠标', NULL, 9, 1, 0, NOW(), NOW()),
(10, '键盘', NULL, 10, 1, 0, NOW(), NOW()),
(10, 'U盘', NULL, 11, 1, 0, NOW(), NOW()),
(10, '车载充电器', NULL, 12, 1, 0, NOW(), NOW()),

-- 家居 家装
(11, '智能门锁', NULL, 1, 1, 0, NOW(), NOW()),
(11, '智能灯具', NULL, 2, 1, 0, NOW(), NOW()),
(11, '智能窗帘', NULL, 3, 1, 0, NOW(), NOW()),
(11, '智能开关', NULL, 4, 1, 0, NOW(), NOW()),
(11, '智能摄像头', NULL, 5, 1, 0, NOW(), NOW()),
(11, '智能晾衣架', NULL, 6, 1, 0, NOW(), NOW()),
(11, '智能马桶', NULL, 7, 1, 0, NOW(), NOW()),
(11, '智能浴霸', NULL, 8, 1, 0, NOW(), NOW()),
(11, '智能安防', NULL, 9, 1, 0, NOW(), NOW()),
(11, '智能音响', NULL, 10, 1, 0, NOW(), NOW()),
(11, '智能家居套装', NULL, 11, 1, 0, NOW(), NOW()),
(11, '智能门铃', NULL, 12, 1, 0, NOW(), NOW()),

-- 服务
(12, '以旧换新', NULL, 1, 1, 0, NOW(), NOW()),
(12, '碎屏保', NULL, 2, 1, 0, NOW(), NOW()),
(12, '延保服务', NULL, 3, 1, 0, NOW(), NOW()),
(12, '上门安装', NULL, 4, 1, 0, NOW(), NOW()),
(12, '家电清洗', NULL, 5, 1, 0, NOW(), NOW()),
(12, '手机维修', NULL, 6, 1, 0, NOW(), NOW()),
(12, '家电维修', NULL, 7, 1, 0, NOW(), NOW()),
(12, '笔记本维修', NULL, 8, 1, 0, NOW(), NOW()),
(12, '电视维修', NULL, 9, 1, 0, NOW(), NOW()),
(12, '数据恢复', NULL, 10, 1, 0, NOW(), NOW()),
(12, '配件更换', NULL, 11, 1, 0, NOW(), NOW()),
(12, '技术咨询', NULL, 12, 1, 0, NOW(), NOW());

