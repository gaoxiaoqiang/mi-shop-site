drop table  if exists  mi_shop.tb_mall_user;

create table if not exists mi_shop.tb_mall_user
(
    user_id      bigint auto_increment comment '用户主键id'
    primary key,
    user_name   varchar(50)  default ''                not null comment '登陆名称(默认为手机号)',
    user_phone   varchar(50)  default ''                not null comment '手机号',
    user_password varchar(32)  default ''                not null comment '加密后的密码',
    qq_id        varchar(100) default ''                not null comment 'qq_id',
    wx_id        varchar(100) default ''                not null comment 'wx_id',
    locked_flag  tinyint      default 0                 not null comment '锁定标识字段(0-未锁定 1-已锁定)',
    delete_flag   tinyint      default 0                 not null comment '注销标识字段(0-正常 1-已注销)',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    )
    row_format = DYNAMIC;

