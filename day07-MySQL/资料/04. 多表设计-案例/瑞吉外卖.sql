-- 瑞吉点餐页面原型 , 设计表结构
-- 分类表
create table category(
    id int unsigned primary key auto_increment comment '主键ID',
    name varchar(20) not null unique comment '分类名称',
    type tinyint unsigned not null comment '类型 1 菜品分类 2 套餐分类',
    sort tinyint unsigned not null comment '顺序',
    status tinyint unsigned not null default 0 comment '状态 0 禁用，1 启用',
    create_time datetime not null comment '创建时间',
    update_time datetime not null comment '更新时间'
) comment '菜品及套餐分类' ;

-- 菜品表
create table dish(
    id int unsigned primary key auto_increment comment '主键ID',
    name varchar(20) not null unique comment '菜品名称',
    category_id int unsigned not null comment '菜品分类ID',
    price decimal(8, 2) not null comment '菜品价格',
    image varchar(300) not null comment '菜品图片',
    description varchar(200) comment '描述信息',
    status tinyint unsigned not null default 0 comment '状态, 0 停售 1 起售',
    create_time datetime not null comment '创建时间',
    update_time datetime not null comment '更新时间'
) comment '菜品';

-- 套餐表
create table setmeal(
    id int unsigned primary key auto_increment comment '主键ID',
    name varchar(20) not null unique comment '套餐名称',
    category_id int unsigned not null comment '分类id',
    price decimal(8, 2) not null comment '套餐价格',
    image varchar(300) not null comment '图片',
    description varchar(200) comment '描述信息',
    status tinyint unsigned not null default 0 comment '状态 0:停用 1:启用',
    create_time datetime not null comment '创建时间',
    update_time datetime not null comment '更新时间'
)comment '套餐' ;


-- 套餐菜品关联表
create table setmeal_dish(
    id int unsigned primary key auto_increment comment '主键ID',
    setmeal_id int unsigned not null comment '套餐id ',
    dish_id int unsigned not null comment '菜品id',
    copies tinyint unsigned not null comment '份数'
)comment '套餐菜品关系';










