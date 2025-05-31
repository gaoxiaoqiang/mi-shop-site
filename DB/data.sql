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


# - 商品表及关系表
-- 手机类（category_id=1）
INSERT INTO tb_mall_goods (goods_name, goods_subtitle, goods_price, goods_stock, goods_main_image, goods_images, goods_status, delete_flag)
VALUES
    ('小米14 Pro', '徕卡影像，第二代骁龙8', 4999.00, 100, 'https://cdn.example.com/images/mi14pro_main.jpg', 'https://cdn.example.com/images/mi14pro_1.jpg,https://cdn.example.com/images/mi14pro_2.jpg', 1, 0),
    ('Redmi K70', '旗舰性能，超长续航', 2999.00, 120, 'https://cdn.example.com/images/k70_main.jpg', 'https://cdn.example.com/images/k70_1.jpg,https://cdn.example.com/images/k70_2.jpg', 1, 0),
    ('小米13', '轻薄旗舰', 3999.00, 80, 'https://cdn.example.com/images/mi13_main.jpg', 'https://cdn.example.com/images/mi13_1.jpg,https://cdn.example.com/images/mi13_2.jpg', 1, 0),
    ('Redmi Note 12', '千元机皇', 1299.00, 200, 'https://cdn.example.com/images/note12_main.jpg', 'https://cdn.example.com/images/note12_1.jpg,https://cdn.example.com/images/note12_2.jpg', 1, 0),
    ('小米Civi 3', '自拍旗舰', 2599.00, 90, 'https://cdn.example.com/images/civi3_main.jpg', 'https://cdn.example.com/images/civi3_1.jpg,https://cdn.example.com/images/civi3_2.jpg', 1, 0),
    ('Redmi 12C', '入门畅销', 899.00, 300, 'https://cdn.example.com/images/12c_main.jpg', 'https://cdn.example.com/images/12c_1.jpg,https://cdn.example.com/images/12c_2.jpg', 1, 0),
    ('小米MIX Fold 3', '折叠旗舰', 8999.00, 30, 'https://cdn.example.com/images/mixfold3_main.jpg', 'https://cdn.example.com/images/mixfold3_1.jpg,https://cdn.example.com/images/mixfold3_2.jpg', 1, 0),
    ('小米12S Ultra', '徕卡影像', 5999.00, 60, 'https://cdn.example.com/images/12sultra_main.jpg', 'https://cdn.example.com/images/12sultra_1.jpg,https://cdn.example.com/images/12sultra_2.jpg', 1, 0),
    ('Redmi Note 11', '高性价比', 1099.00, 180, 'https://cdn.example.com/images/note11_main.jpg', 'https://cdn.example.com/images/note11_1.jpg,https://cdn.example.com/images/note11_2.jpg', 1, 0),
    ('小米11青春版', '轻薄时尚', 1999.00, 100, 'https://cdn.example.com/images/mi11lite_main.jpg', 'https://cdn.example.com/images/mi11lite_1.jpg,https://cdn.example.com/images/mi11lite_2.jpg', 1, 0),
    ('Redmi K60', '性能旗舰', 2599.00, 110, 'https://cdn.example.com/images/k60_main.jpg', 'https://cdn.example.com/images/k60_1.jpg,https://cdn.example.com/images/k60_2.jpg', 1, 0),
    ('小米10至尊纪念版', '经典旗舰', 3999.00, 50, 'https://cdn.example.com/images/mi10ultra_main.jpg', 'https://cdn.example.com/images/mi10ultra_1.jpg,https://cdn.example.com/images/mi10ultra_2.jpg', 1, 0);

-- 关联关系（假设goods_id从1递增）
INSERT INTO tb_mall_goods_category_relation (goods_id, category_id)
VALUES
    (1, 1),(2, 1),(3, 1),(4, 1),(5, 1),(6, 1),(7, 1),(8, 1),(9, 1),(10, 1),(11, 1),(12, 1);

-- 家电类（category_id=2）
INSERT INTO tb_mall_goods (goods_name, goods_subtitle, goods_price, goods_stock, goods_main_image, goods_images, goods_status, delete_flag)
VALUES
    ('米家扫地机器人', '智能路径规划，超强吸力', 1999.00, 50, 'https://cdn.example.com/images/robot_main.jpg', 'https://cdn.example.com/images/robot_1.jpg,https://cdn.example.com/images/robot_2.jpg', 1, 0),
    ('米家空气净化器', '高效净化，静音设计', 899.00, 80, 'https://cdn.example.com/images/airpurifier_main.jpg', 'https://cdn.example.com/images/airpurifier_1.jpg,https://cdn.example.com/images/airpurifier_2.jpg', 1, 0),
    ('米家电饭煲', '智能预约，IH加热', 499.00, 120, 'https://cdn.example.com/images/ricecooker_main.jpg', 'https://cdn.example.com/images/ricecooker_1.jpg,https://cdn.example.com/images/ricecooker_2.jpg', 1, 0),
    ('米家洗衣机', '变频节能', 1699.00, 40, 'https://cdn.example.com/images/washer_main.jpg', 'https://cdn.example.com/images/washer_1.jpg,https://cdn.example.com/images/washer_2.jpg', 1, 0),
    ('米家冰箱', '风冷无霜', 2399.00, 30, 'https://cdn.example.com/images/fridge_main.jpg', 'https://cdn.example.com/images/fridge_1.jpg,https://cdn.example.com/images/fridge_2.jpg', 1, 0),
    ('米家微波炉', '智能菜单', 399.00, 60, 'https://cdn.example.com/images/microwave_main.jpg', 'https://cdn.example.com/images/microwave_1.jpg,https://cdn.example.com/images/microwave_2.jpg', 1, 0),
    ('米家电水壶', '一键烧水', 199.00, 100, 'https://cdn.example.com/images/kettle_main.jpg', 'https://cdn.example.com/images/kettle_1.jpg,https://cdn.example.com/images/kettle_2.jpg', 1, 0),
    ('米家吸尘器', '无线手持', 799.00, 70, 'https://cdn.example.com/images/vacuum_main.jpg', 'https://cdn.example.com/images/vacuum_1.jpg,https://cdn.example.com/images/vacuum_2.jpg', 1, 0),
    ('米家热水器', '速热恒温', 1299.00, 40, 'https://cdn.example.com/images/waterheater_main.jpg', 'https://cdn.example.com/images/waterheater_1.jpg,https://cdn.example.com/images/waterheater_2.jpg', 1, 0),
    ('米家风扇', '静音节能', 299.00, 90, 'https://cdn.example.com/images/fan_main.jpg', 'https://cdn.example.com/images/fan_1.jpg,https://cdn.example.com/images/fan_2.jpg', 1, 0),
    ('米家加湿器', '大容量静音', 399.00, 60, 'https://cdn.example.com/images/humidifier_main.jpg', 'https://cdn.example.com/images/humidifier_1.jpg,https://cdn.example.com/images/humidifier_2.jpg', 1, 0),
    ('米家榨汁机', '多功能', 299.00, 80, 'https://cdn.example.com/images/juicer_main.jpg', 'https://cdn.example.com/images/juicer_1.jpg,https://cdn.example.com/images/juicer_2.jpg', 1, 0);

-- 关联关系（goods_id 13~24）
INSERT INTO tb_mall_goods_category_relation (goods_id, category_id)
VALUES
    (13, 2),(14, 2),(15, 2),(16, 2),(17, 2),(18, 2),(19, 2),(20, 2),(21, 2),(22, 2),(23, 2),(24, 2);

-- 电视类（category_id=3）
INSERT INTO tb_mall_goods (goods_name, goods_subtitle, goods_price, goods_stock, goods_main_image, goods_images, goods_status, delete_flag)
VALUES
    ('小米电视6 65英寸', '4K超高清，杜比音效', 2999.00, 30, 'https://cdn.example.com/images/tv6_main.jpg', 'https://cdn.example.com/images/tv6_1.jpg,https://cdn.example.com/images/tv6_2.jpg', 1, 0),
    ('小米电视EA55', '金属全面屏', 1999.00, 40, 'https://cdn.example.com/images/tvea55_main.jpg', 'https://cdn.example.com/images/tvea55_1.jpg,https://cdn.example.com/images/tvea55_2.jpg', 1, 0),
    ('Redmi 智能电视X55', 'MEMC运动补偿', 2299.00, 35, 'https://cdn.example.com/images/redmitv_main.jpg', 'https://cdn.example.com/images/redmitv_1.jpg,https://cdn.example.com/images/redmitv_2.jpg', 1, 0),
    ('小米电视大师77 OLED', '旗舰画质', 17999.00, 10, 'https://cdn.example.com/images/tvmaster_main.jpg', 'https://cdn.example.com/images/tvmaster_1.jpg,https://cdn.example.com/images/tvmaster_2.jpg', 1, 0),
    ('小米电视4A 43', '智能语音', 1299.00, 50, 'https://cdn.example.com/images/tv4a_main.jpg', 'https://cdn.example.com/images/tv4a_1.jpg,https://cdn.example.com/images/tv4a_2.jpg', 1, 0),
    ('小米电视ES Pro 65', '120Hz高刷', 3999.00, 20, 'https://cdn.example.com/images/tvespro_main.jpg', 'https://cdn.example.com/images/tvespro_1.jpg,https://cdn.example.com/images/tvespro_2.jpg', 1, 0),
    ('Redmi 智能电视A32', '高清小屏', 799.00, 60, 'https://cdn.example.com/images/redmitva32_main.jpg', 'https://cdn.example.com/images/redmitva32_1.jpg,https://cdn.example.com/images/redmitva32_2.jpg', 1, 0),
    ('小米电视5 Pro', '量子点屏', 5999.00, 15, 'https://cdn.example.com/images/tv5pro_main.jpg', 'https://cdn.example.com/images/tv5pro_1.jpg,https://cdn.example.com/images/tv5pro_2.jpg', 1, 0),
    ('小米电视4C 50', '4K HDR', 1599.00, 45, 'https://cdn.example.com/images/tv4c_main.jpg', 'https://cdn.example.com/images/tv4c_1.jpg,https://cdn.example.com/images/tv4c_2.jpg', 1, 0),
    ('小米电视E43K', '智能语音', 999.00, 55, 'https://cdn.example.com/images/tve43k_main.jpg', 'https://cdn.example.com/images/tve43k_1.jpg,https://cdn.example.com/images/tve43k_2.jpg', 1, 0),
    ('小米电视4S 75', '大屏影院', 4999.00, 12, 'https://cdn.example.com/images/tv4s_main.jpg', 'https://cdn.example.com/images/tv4s_1.jpg,https://cdn.example.com/images/tv4s_2.jpg', 1, 0),
    ('Redmi 智能电视X65', '超大屏', 3299.00, 18, 'https://cdn.example.com/images/redmitvx65_main.jpg', 'https://cdn.example.com/images/redmitvx65_1.jpg,https://cdn.example.com/images/redmitvx65_2.jpg', 1, 0);

-- 关联关系（goods_id 25~36）
INSERT INTO tb_mall_goods_category_relation (goods_id, category_id)
VALUES
    (25, 3),(26, 3),(27, 3),(28, 3),(29, 3),(30, 3),(31, 3),(32, 3),(33, 3),(34, 3),(35, 3),(36, 3);


- 笔记本（category_id=4，goods_id=37~48）
INSERT INTO tb_mall_goods (goods_id, goods_name, goods_subtitle, goods_price, goods_stock, goods_main_image, goods_images, goods_status, delete_flag)
VALUES
    (37, 'Redmi Book Pro 14', '高性能轻薄本', 4599.00, 50, 'https://cdn.example.com/images/rbpro14_main.jpg', 'https://cdn.example.com/images/rbpro14_1.jpg,https://cdn.example.com/images/rbpro14_2.jpg', 1, 0),
    (38, 'Redmi Book Pro 15', '大屏高刷', 4999.00, 40, 'https://cdn.example.com/images/rbpro15_main.jpg', 'https://cdn.example.com/images/rbpro15_1.jpg,https://cdn.example.com/images/rbpro15_2.jpg', 1, 0),
    (39, '小米笔记本Pro X', '旗舰性能', 7999.00, 20, 'https://cdn.example.com/images/mbpro_x_main.jpg', 'https://cdn.example.com/images/mbpro_x_1.jpg,https://cdn.example.com/images/mbpro_x_2.jpg', 1, 0),
    (40, '小米笔记本Air 13', '轻薄便携', 3999.00, 60, 'https://cdn.example.com/images/mbair13_main.jpg', 'https://cdn.example.com/images/mbair13_1.jpg,https://cdn.example.com/images/mbair13_2.jpg', 1, 0),
    (41, 'Redmi G 游戏本', '电竞级性能', 6999.00, 30, 'https://cdn.example.com/images/redmig_main.jpg', 'https://cdn.example.com/images/redmig_1.jpg,https://cdn.example.com/images/redmig_2.jpg', 1, 0),
    (42, '小米笔记本Pro 15', '高色域大屏', 5999.00, 25, 'https://cdn.example.com/images/mbpro15_main.jpg', 'https://cdn.example.com/images/mbpro15_1.jpg,https://cdn.example.com/images/mbpro15_2.jpg', 1, 0),
    (43, 'Redmi Book 14', '高性价比', 3999.00, 45, 'https://cdn.example.com/images/rb14_main.jpg', 'https://cdn.example.com/images/rb14_1.jpg,https://cdn.example.com/images/rb14_2.jpg', 1, 0),
    (44, '小米笔记本Air 12.5', '极致轻薄', 3299.00, 35, 'https://cdn.example.com/images/mbair12_main.jpg', 'https://cdn.example.com/images/mbair12_1.jpg,https://cdn.example.com/images/mbair12_2.jpg', 1, 0),
    (45, 'Redmi Book 16', '大屏办公', 4299.00, 28, 'https://cdn.example.com/images/rb16_main.jpg', 'https://cdn.example.com/images/rb16_1.jpg,https://cdn.example.com/images/rb16_2.jpg', 1, 0),
    (46, '小米笔记本Pro 14', '高性能办公', 5299.00, 22, 'https://cdn.example.com/images/mbpro14_main.jpg', 'https://cdn.example.com/images/mbpro14_1.jpg,https://cdn.example.com/images/mbpro14_2.jpg', 1, 0),
    (47, 'Redmi Book e-Learning', '学生专用', 3499.00, 40, 'https://cdn.example.com/images/rbelearning_main.jpg', 'https://cdn.example.com/images/rbelearning_1.jpg,https://cdn.example.com/images/rbelearning_2.jpg', 1, 0),
    (48, '小米笔记本Pro 13.3', '轻薄高效', 4799.00, 18, 'https://cdn.example.com/images/mbpro133_main.jpg', 'https://cdn.example.com/images/mbpro133_1.jpg,https://cdn.example.com/images/mbpro133_2.jpg', 1, 0);

-- 关系
INSERT INTO tb_mall_goods_category_relation (goods_id, category_id) VALUES
                                                                        (37,4),(38,4),(39,4),(40,4),(41,4),(42,4),(43,4),(44,4),(45,4),(46,4),(47,4),(48,4);

-- 出行 穿戴（category_id=5，goods_id=49~60）
INSERT INTO tb_mall_goods (goods_id, goods_name, goods_subtitle, goods_price, goods_stock, goods_main_image, goods_images, goods_status, delete_flag)
VALUES
    (49, '小米手环8', '健康监测，超长续航', 299.00, 200, 'https://cdn.example.com/images/band8_main.jpg', 'https://cdn.example.com/images/band8_1.jpg,https://cdn.example.com/images/band8_2.jpg', 1, 0),
    (50, '小米手表Color', '多彩表盘', 799.00, 120, 'https://cdn.example.com/images/watchcolor_main.jpg', 'https://cdn.example.com/images/watchcolor_1.jpg,https://cdn.example.com/images/watchcolor_2.jpg', 1, 0),
    (51, 'Redmi 手环2', '轻巧舒适', 199.00, 180, 'https://cdn.example.com/images/rbband2_main.jpg', 'https://cdn.example.com/images/rbband2_1.jpg,https://cdn.example.com/images/rbband2_2.jpg', 1, 0),
    (52, '小米手表S1', '商务风格', 1099.00, 80, 'https://cdn.example.com/images/watchs1_main.jpg', 'https://cdn.example.com/images/watchs1_1.jpg,https://cdn.example.com/images/watchs1_2.jpg', 1, 0),
    (53, '小米手环7', '全天健康监测', 249.00, 160, 'https://cdn.example.com/images/band7_main.jpg', 'https://cdn.example.com/images/band7_1.jpg,https://cdn.example.com/images/band7_2.jpg', 1, 0),
    (54, 'Redmi Watch 3', '高清大屏', 399.00, 140, 'https://cdn.example.com/images/rbwatch3_main.jpg', 'https://cdn.example.com/images/rbwatch3_1.jpg,https://cdn.example.com/images/rbwatch3_2.jpg', 1, 0),
    (55, '小米手表青春版', '轻盈时尚', 599.00, 110, 'https://cdn.example.com/images/watchlite_main.jpg', 'https://cdn.example.com/images/watchlite_1.jpg,https://cdn.example.com/images/watchlite_2.jpg', 1, 0),
    (56, '小米手环6 NFC', '便捷支付', 349.00, 130, 'https://cdn.example.com/images/band6nfc_main.jpg', 'https://cdn.example.com/images/band6nfc_1.jpg,https://cdn.example.com/images/band6nfc_2.jpg', 1, 0),
    (57, 'Redmi 手表2 Lite', '多功能运动', 299.00, 150, 'https://cdn.example.com/images/rbwatch2lite_main.jpg', 'https://cdn.example.com/images/rbwatch2lite_1.jpg,https://cdn.example.com/images/rbwatch2lite_2.jpg', 1, 0),
    (58, '小米手环5', '经典畅销', 199.00, 170, 'https://cdn.example.com/images/band5_main.jpg', 'https://cdn.example.com/images/band5_1.jpg,https://cdn.example.com/images/band5_2.jpg', 1, 0),
    (59, '小米手表X', '旗舰智能', 1299.00, 60, 'https://cdn.example.com/images/watchx_main.jpg', 'https://cdn.example.com/images/watchx_1.jpg,https://cdn.example.com/images/watchx_2.jpg', 1, 0),
    (60, 'Redmi 手环1', '入门之选', 99.00, 200, 'https://cdn.example.com/images/rbband1_main.jpg', 'https://cdn.example.com/images/rbband1_1.jpg,https://cdn.example.com/images/rbband1_2.jpg', 1, 0);

INSERT INTO tb_mall_goods_category_relation (goods_id, category_id) VALUES
                                                                        (49,5),(50,5),(51,5),(52,5),(53,5),(54,5),(55,5),(56,5),(57,5),(58,5),(59,5),(60,5);

-- 耳机 音箱（category_id=6，goods_id=61~72）
INSERT INTO tb_mall_goods (goods_id, goods_name, goods_subtitle, goods_price, goods_stock, goods_main_image, goods_images, goods_status, delete_flag)
VALUES
    (61, '小米蓝牙耳机', '高清通话', 199.00, 200, 'https://cdn.example.com/images/bt_headset_main.jpg', 'https://cdn.example.com/images/bt_headset_1.jpg,https://cdn.example.com/images/bt_headset_2.jpg', 1, 0),
    (62, '小米真无线降噪耳机', '主动降噪', 499.00, 150, 'https://cdn.example.com/images/tws_main.jpg', 'https://cdn.example.com/images/tws_1.jpg,https://cdn.example.com/images/tws_2.jpg', 1, 0),
    (63, 'Redmi Buds 4', '舒适佩戴', 299.00, 180, 'https://cdn.example.com/images/buds4_main.jpg', 'https://cdn.example.com/images/buds4_1.jpg,https://cdn.example.com/images/buds4_2.jpg', 1, 0),
    (64, '小米蓝牙音箱', '便携音质', 199.00, 120, 'https://cdn.example.com/images/btspeaker_main.jpg', 'https://cdn.example.com/images/btspeaker_1.jpg,https://cdn.example.com/images/btspeaker_2.jpg', 1, 0),
    (65, '小米小爱音箱', '智能语音', 299.00, 140, 'https://cdn.example.com/images/xiaoai_main.jpg', 'https://cdn.example.com/images/xiaoai_1.jpg,https://cdn.example.com/images/xiaoai_2.jpg', 1, 0),
    (66, 'Redmi Soundbar', '家庭影院', 399.00, 100, 'https://cdn.example.com/images/soundbar_main.jpg', 'https://cdn.example.com/images/soundbar_1.jpg,https://cdn.example.com/images/soundbar_2.jpg', 1, 0),
    (67, '小米头戴式耳机', '高保真音质', 599.00, 80, 'https://cdn.example.com/images/overear_main.jpg', 'https://cdn.example.com/images/overear_1.jpg,https://cdn.example.com/images/overear_2.jpg', 1, 0),
    (68, 'Redmi Buds 3', '轻盈舒适', 199.00, 160, 'https://cdn.example.com/images/buds3_main.jpg', 'https://cdn.example.com/images/buds3_1.jpg,https://cdn.example.com/images/buds3_2.jpg', 1, 0),
    (69, '小米无线音箱', '多房间联动', 399.00, 90, 'https://cdn.example.com/images/wirelessspeaker_main.jpg', 'https://cdn.example.com/images/wirelessspeaker_1.jpg,https://cdn.example.com/images/wirelessspeaker_2.jpg', 1, 0),
    (70, '小米蓝牙音箱mini', '迷你便携', 99.00, 200, 'https://cdn.example.com/images/btspeaker_mini_main.jpg', 'https://cdn.example.com/images/btspeaker_mini_1.jpg,https://cdn.example.com/images/btspeaker_mini_2.jpg', 1, 0),
    (71, 'Redmi Buds 4 Pro', '旗舰降噪', 399.00, 110, 'https://cdn.example.com/images/buds4pro_main.jpg', 'https://cdn.example.com/images/buds4pro_1.jpg,https://cdn.example.com/images/buds4pro_2.jpg', 1, 0),
    (72, '小米AI音箱', '智能家居控制', 299.00, 130, 'https://cdn.example.com/images/aispeaker_main.jpg', 'https://cdn.example.com/images/aispeaker_1.jpg,https://cdn.example.com/images/aispeaker_2.jpg', 1, 0);

INSERT INTO tb_mall_goods_category_relation (goods_id, category_id) VALUES
                                                                        (61,6),(62,6),(63,6),(64,6),(65,6),(66,6),(67,6),(68,6),(69,6),(70,6),(71,6),(72,6);

-- 健康 儿童（category_id=7，goods_id=73~84）
INSERT INTO tb_mall_goods (goods_id, goods_name, goods_subtitle, goods_price, goods_stock, goods_main_image, goods_images, goods_status, delete_flag)
VALUES
    (73, '米家体脂秤2', '精准测量', 129.00, 120, 'https://cdn.example.com/images/scale2_main.jpg', 'https://cdn.example.com/images/scale2_1.jpg,https://cdn.example.com/images/scale2_2.jpg', 1, 0),
    (74, '米家电子血压计', '智能测量', 199.00, 80, 'https://cdn.example.com/images/bp_main.jpg', 'https://cdn.example.com/images/bp_1.jpg,https://cdn.example.com/images/bp_2.jpg', 1, 0),
    (75, '米家电子体温计', '快速测温', 59.00, 150, 'https://cdn.example.com/images/thermometer_main.jpg', 'https://cdn.example.com/images/thermometer_1.jpg,https://cdn.example.com/images/thermometer_2.jpg', 1, 0),
    (76, '米家按摩仪', '多部位按摩', 399.00, 60, 'https://cdn.example.com/images/massager_main.jpg', 'https://cdn.example.com/images/massager_1.jpg,https://cdn.example.com/images/massager_2.jpg', 1, 0),
    (77, '米家智能跳绳', '计数精准', 99.00, 130, 'https://cdn.example.com/images/jumprope_main.jpg', 'https://cdn.example.com/images/jumprope_1.jpg,https://cdn.example.com/images/jumprope_2.jpg', 1, 0),
    (78, '米家助眠灯', '智能调光', 199.00, 90, 'https://cdn.example.com/images/sleeplamp_main.jpg', 'https://cdn.example.com/images/sleeplamp_1.jpg,https://cdn.example.com/images/sleeplamp_2.jpg', 1, 0),
    (79, '米家智能体温贴', '实时监测', 149.00, 110, 'https://cdn.example.com/images/temp_patch_main.jpg', 'https://cdn.example.com/images/temp_patch_1.jpg,https://cdn.example.com/images/temp_patch_2.jpg', 1, 0),
    (80, '米家健康秤', '多项健康数据', 99.00, 140, 'https://cdn.example.com/images/healthscale_main.jpg', 'https://cdn.example.com/images/healthscale_1.jpg,https://cdn.example.com/images/healthscale_2.jpg', 1, 0),
    (81, '米家智能血糖仪', '便携测量', 299.00, 70, 'https://cdn.example.com/images/glucometer_main.jpg', 'https://cdn.example.com/images/glucometer_1.jpg,https://cdn.example.com/images/glucometer_2.jpg', 1, 0),
    (82, '米家健康手环', '健康监测', 199.00, 100, 'https://cdn.example.com/images/healthband_main.jpg', 'https://cdn.example.com/images/healthband_1.jpg,https://cdn.example.com/images/healthband_2.jpg', 1, 0),
    (83, '米家智能血氧仪', '精准检测', 249.00, 80, 'https://cdn.example.com/images/oximeter_main.jpg', 'https://cdn.example.com/images/oximeter_1.jpg,https://cdn.example.com/images/oximeter_2.jpg', 1, 0),
    (84, '米家健康枕', '舒适睡眠', 399.00, 60, 'https://cdn.example.com/images/healthpillow_main.jpg', 'https://cdn.example.com/images/healthpillow_1.jpg,https://cdn.example.com/images/healthpillow_2.jpg', 1, 0);

INSERT INTO tb_mall_goods_category_relation (goods_id, category_id) VALUES
                                                                        (73,7),(74,7),(75,7),(76,7),(77,7),(78,7),(79,7),(80,7),(81,7),(82,7),(83,7),(84,7);

-- 生活 箱包（category_id=8，goods_id=85~96）
INSERT INTO tb_mall_goods (goods_id, goods_name, goods_subtitle, goods_price, goods_stock, goods_main_image, goods_images, goods_status, delete_flag)
VALUES
    (85, '米家行李箱', '大容量耐用', 399.00, 100, 'https://cdn.example.com/images/suitcase_main.jpg', 'https://cdn.example.com/images/suitcase_1.jpg,https://cdn.example.com/images/suitcase_2.jpg', 1, 0),
    (86, '米家背包', '多功能收纳', 199.00, 120, 'https://cdn.example.com/images/backpack_main.jpg', 'https://cdn.example.com/images/backpack_1.jpg,https://cdn.example.com/images/backpack_2.jpg', 1, 0),
    (87, '米家收纳盒', '桌面整理', 59.00, 200, 'https://cdn.example.com/images/box_main.jpg', 'https://cdn.example.com/images/box_1.jpg,https://cdn.example.com/images/box_2.jpg', 1, 0),
    (88, '米家旅行包', '轻便大容量', 299.00, 90, 'https://cdn.example.com/images/travelbag_main.jpg', 'https://cdn.example.com/images/travelbag_1.jpg,https://cdn.example.com/images/travelbag_2.jpg', 1, 0),
    (89, '米家收纳袋', '多功能', 39.00, 180, 'https://cdn.example.com/images/bag_main.jpg', 'https://cdn.example.com/images/bag_1.jpg,https://cdn.example.com/images/bag_2.jpg', 1, 0),
    (90, '米家洗漱包', '防水便携', 49.00, 160, 'https://cdn.example.com/images/washbag_main.jpg', 'https://cdn.example.com/images/washbag_1.jpg,https://cdn.example.com/images/washbag_2.jpg', 1, 0),
    (91, '米家鞋盒', '透明收纳', 29.00, 140, 'https://cdn.example.com/images/shoebox_main.jpg', 'https://cdn.example.com/images/shoebox_1.jpg,https://cdn.example.com/images/shoebox_2.jpg', 1, 0),
    (92, '米家钥匙包', '真皮材质', 69.00, 110, 'https://cdn.example.com/images/keybag_main.jpg', 'https://cdn.example.com/images/keybag_1.jpg,https://cdn.example.com/images/keybag_2.jpg', 1, 0),
    (93, '米家钱包', '简约设计', 99.00, 130, 'https://cdn.example.com/images/wallet_main.jpg', 'https://cdn.example.com/images/wallet_1.jpg,https://cdn.example.com/images/wallet_2.jpg', 1, 0),
    (94, '米家手提包', '商务休闲', 159.00, 80, 'https://cdn.example.com/images/handbag_main.jpg', 'https://cdn.example.com/images/handbag_1.jpg,https://cdn.example.com/images/handbag_2.jpg', 1, 0),
    (95, '米家旅行收纳包', '多层分区', 79.00, 150, 'https://cdn.example.com/images/travelcase_main.jpg', 'https://cdn.example.com/images/travelcase_1.jpg,https://cdn.example.com/images/travelcase_2.jpg', 1, 0),
    (96, '米家购物袋', '环保耐用', 19.00, 200, 'https://cdn.example.com/images/shoppingbag_main.jpg', 'https://cdn.example.com/images/shoppingbag_1.jpg,https://cdn.example.com/images/shoppingbag_2.jpg', 1, 0);

INSERT INTO tb_mall_goods_category_relation (goods_id, category_id) VALUES
                                                                        (85,8),(86,8),(87,8),(88,8),(89,8),(90,8),(91,8),(92,8),(93,8),(94,8),(95,8),(96,8);

-- 智能 路由（category_id=9，goods_id=97~108）
INSERT INTO tb_mall_goods (goods_id, goods_name, goods_subtitle, goods_price, goods_stock, goods_main_image, goods_images, goods_status, delete_flag)
VALUES
    (97, '小米路由器AX6000', 'WiFi 6增强版', 599.00, 80, 'https://cdn.example.com/images/ax6000_main.jpg', 'https://cdn.example.com/images/ax6000_1.jpg,https://cdn.example.com/images/ax6000_2.jpg', 1, 0),
    (98, 'Redmi 路由器AX5400', '电竞加速', 499.00, 70, 'https://cdn.example.com/images/ax5400_main.jpg', 'https://cdn.example.com/images/ax5400_1.jpg,https://cdn.example.com/images/ax5400_2.jpg', 1, 0),
    (99, '小米路由器AX3600', '高性能多设备', 399.00, 90, 'https://cdn.example.com/images/ax3600_main.jpg', 'https://cdn.example.com/images/ax3600_1.jpg,https://cdn.example.com/images/ax3600_2.jpg', 1, 0),
    (100, 'Redmi 路由器AX3000', '千兆端口', 299.00, 100, 'https://cdn.example.com/images/ax3000_main.jpg', 'https://cdn.example.com/images/ax3000_1.jpg,https://cdn.example.com/images/ax3000_2.jpg', 1, 0),
    (101, '小米路由器AX1800', '入门WiFi6', 199.00, 120, 'https://cdn.example.com/images/ax1800_main.jpg', 'https://cdn.example.com/images/ax1800_1.jpg,https://cdn.example.com/images/ax1800_2.jpg', 1, 0),
    (102, 'Redmi 路由器AC2100', '高性价比', 159.00, 130, 'https://cdn.example.com/images/ac2100_main.jpg', 'https://cdn.example.com/images/ac2100_1.jpg,https://cdn.example.com/images/ac2100_2.jpg', 1, 0),
    (103, '小米路由器4A', '千兆版', 129.00, 140, 'https://cdn.example.com/images/4a_main.jpg', 'https://cdn.example.com/images/4a_1.jpg,https://cdn.example.com/images/4a_2.jpg', 1, 0),
    (104, 'Redmi 路由器AC1200', '稳定高速', 99.00, 150, 'https://cdn.example.com/images/ac1200_main.jpg', 'https://cdn.example.com/images/ac1200_1.jpg,https://cdn.example.com/images/ac1200_2.jpg', 1, 0),
    (105, '小米路由器Mesh', '全屋覆盖', 899.00, 60, 'https://cdn.example.com/images/mesh_main.jpg', 'https://cdn.example.com/images/mesh_1.jpg,https://cdn.example.com/images/mesh_2.jpg', 1, 0),
    (106, '小米路由器CR6608', '企业级', 399.00, 80, 'https://cdn.example.com/images/cr6608_main.jpg', 'https://cdn.example.com/images/cr6608_1.jpg,https://cdn.example.com/images/cr6608_2.jpg', 1, 0),
    (107, 'Redmi 路由器AX5', 'WiFi6入门', 199.00, 110, 'https://cdn.example.com/images/ax5_main.jpg', 'https://cdn.example.com/images/ax5_1.jpg,https://cdn.example.com/images/ax5_2.jpg', 1, 0),
    (108, '小米路由器3G', '经典畅销', 89.00, 160, 'https://cdn.example.com/images/3g_main.jpg', 'https://cdn.example.com/images/3g_1.jpg,https://cdn.example.com/images/3g_2.jpg', 1, 0);

INSERT INTO tb_mall_goods_category_relation (goods_id, category_id) VALUES
                                                                        (97,9),(98,9),(99,9),(100,9),(101,9),(102,9),(103,9),(104,9),(105,9),(106,9),(107,9),(108,9);

-- 电源 配件（category_id=10，goods_id=109~120）
INSERT INTO tb_mall_goods (goods_id, goods_name, goods_subtitle, goods_price, goods_stock, goods_main_image, goods_images, goods_status, delete_flag)
VALUES
    (109, '小米移动电源3', '大容量快充', 149.00, 180, 'https://cdn.example.com/images/powerbank3_main.jpg', 'https://cdn.example.com/images/powerbank3_1.jpg,https://cdn.example.com/images/powerbank3_2.jpg', 1, 0),
    (110, '小米快充充电器', '多口输出', 99.00, 220, 'https://cdn.example.com/images/charger_main.jpg', 'https://cdn.example.com/images/charger_1.jpg,https://cdn.example.com/images/charger_2.jpg', 1, 0),
    (111, '小米Type-C数据线', '快充耐用', 29.00, 300, 'https://cdn.example.com/images/typec_main.jpg', 'https://cdn.example.com/images/typec_1.jpg,https://cdn.example.com/images/typec_2.jpg', 1, 0),
    (112, '小米无线充电器', '15W快充', 129.00, 150, 'https://cdn.example.com/images/wirelesscharger_main.jpg', 'https://cdn.example.com/images/wirelesscharger_1.jpg,https://cdn.example.com/images/wirelesscharger_2.jpg', 1, 0),
    (113, '小米自拍杆', '蓝牙遥控', 79.00, 180, 'https://cdn.example.com/images/selfiestick_main.jpg', 'https://cdn.example.com/images/selfiestick_1.jpg,https://cdn.example.com/images/selfiestick_2.jpg', 1, 0),
    (114, '小米手机壳', '多彩保护', 49.00, 250, 'https://cdn.example.com/images/case_main.jpg', 'https://cdn.example.com/images/case_1.jpg,https://cdn.example.com/images/case_2.jpg', 1, 0),
    (115, '小米钢化膜', '高清防爆', 29.00, 300, 'https://cdn.example.com/images/screen_main.jpg', 'https://cdn.example.com/images/screen_1.jpg,https://cdn.example.com/images/screen_2.jpg', 1, 0),
    (116, '小米蓝牙音箱', '便携音质', 199.00, 120, 'https://cdn.example.com/images/btspeaker_main.jpg', 'https://cdn.example.com/images/btspeaker_1.jpg,https://cdn.example.com/images/btspeaker_2.jpg', 1, 0),
    (117, '小米鼠标', '无线静音', 59.00, 160, 'https://cdn.example.com/images/mouse_main.jpg', 'https://cdn.example.com/images/mouse_1.jpg,https://cdn.example.com/images/mouse_2.jpg', 1, 0),
    (118, '小米键盘', '蓝牙多模', 129.00, 110, 'https://cdn.example.com/images/keyboard_main.jpg', 'https://cdn.example.com/images/keyboard_1.jpg,https://cdn.example.com/images/keyboard_2.jpg', 1, 0),
    (119, '小米U盘', '高速传输', 69.00, 170, 'https://cdn.example.com/images/usb_main.jpg', 'https://cdn.example.com/images/usb_1.jpg,https://cdn.example.com/images/usb_2.jpg', 1, 0),
    (120, '小米车载充电器', '双口快充', 79.00, 200, 'https://cdn.example.com/images/car_charger_main.jpg', 'https://cdn.example.com/images/car_charger_1.jpg,https://cdn.example.com/images/car_charger_2.jpg', 1, 0);

INSERT INTO tb_mall_goods_category_relation (goods_id, category_id) VALUES
                                                                        (109,10),(110,10),(111,10),(112,10),(113,10),(114,10),(115,10),(116,10),(117,10),(118,10),(119,10),(120,10);