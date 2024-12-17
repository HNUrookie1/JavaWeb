-- 分类表
create table category(
    id int unsigned primary key auto_increment comment '主键ID',
    name varchar(20) not null unique comment '分类名称',
    type tinyint unsigned not null comment '类型 1 菜品分类 2 套餐分类',
    sort tinyint unsigned not null comment '顺序',
    status tinyint unsigned not null default 0 comment '状态 0 禁用，1 启用',
    create_time datetime not null comment '创建时间',
    update_time datetime not null comment '更新时间'
) comment '分类' ;

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
)comment '套餐菜品中间表';

-- ================================== 导入测试数据 ====================================
-- category
insert into category (id, type, name, sort, status, create_time, update_time) values (1, 1, '酒水饮料', 10, 1, '2022-08-09 22:09:18', '2022-08-09 22:09:18');
insert into category (id, type, name, sort, status, create_time, update_time) values (2, 1, '传统主食', 9, 1, '2022-08-09 22:09:32', '2022-08-09 22:18:53');
insert into category (id, type, name, sort, status, create_time, update_time) values (3, 2, '人气套餐', 12, 1, '2022-08-09 22:11:38', '2022-08-10 11:04:40');
insert into category (id, type, name, sort, status, create_time, update_time) values (4, 2, '商务套餐', 13, 1, '2022-08-09 22:14:10', '2022-08-10 11:04:48');
insert into category (id, type, name, sort, status, create_time, update_time) values (5, 1, '经典川菜', 6, 1, '2022-08-09 22:17:42', '2022-08-09 22:17:42');
insert into category (id, type, name, sort, status, create_time, update_time) values (6, 1, '新鲜时蔬', 7, 1, '2022-08-09 22:18:12', '2022-08-09 22:18:28');
insert into category (id, type, name, sort, status, create_time, update_time) values (7, 1, '汤类', 11, 1, '2022-08-10 10:51:47', '2022-08-10 10:51:47');

-- dish
insert into dish (id, name, category_id, price, image, description, status, create_time, update_time) values (1,'王老吉', 1, 6.00, 'https://reggie-itcast.oss-cn-beijing.aliyuncs.com/41bfcacf-7ad4-4927-8b26-df366553a94c.png', '', 1, '2022-06-09 22:40:47', '2022-06-09 22:40:47');
insert into dish (id, name, category_id, price, image, description, status, create_time, update_time) values (2,'北冰洋', 1, 4.00, 'https://reggie-itcast.oss-cn-beijing.aliyuncs.com/4451d4be-89a2-4939-9c69-3a87151cb979.png', '还是小时候的味道', 1, '2022-06-10 09:18:49', '2022-06-10 09:18:49');
insert into dish (id, name, category_id, price, image, description, status, create_time, update_time) values (3,'雪花啤酒', 1, 4.00, 'https://reggie-itcast.oss-cn-beijing.aliyuncs.com/bf8cbfc1-04d2-40e8-9826-061ee41ab87c.png', '', 1, '2022-06-10 09:22:54', '2022-06-10 09:22:54');
insert into dish (id, name, category_id, price, image, description, status, create_time, update_time) values (4,'米饭', 2, 2.00, 'https://reggie-itcast.oss-cn-beijing.aliyuncs.com/76752350-2121-44d2-b477-10791c23a8ec.png', '精选五常大米', 1, '2022-06-10 09:30:17', '2022-06-10 09:30:17');
insert into dish (id, name, category_id, price, image, description, status, create_time, update_time) values (5,'馒头', 2, 1.00, 'https://reggie-itcast.oss-cn-beijing.aliyuncs.com/475cc599-8661-4899-8f9e-121dd8ef7d02.png', '优质面粉', 1, '2022-06-10 09:34:28', '2022-06-10 09:34:28');
insert into dish (id, name, category_id, price, image, description, status, create_time, update_time) values (6,'老坛酸菜鱼', 5, 56.00, 'https://reggie-itcast.oss-cn-beijing.aliyuncs.com/4a9cefba-6a74-467e-9fde-6e687ea725d7.png', '原料：汤，草鱼，酸菜', 1, '2022-06-10 09:40:51', '2022-06-10 09:40:51');
insert into dish (id, name, category_id, price, image, description, status, create_time, update_time) values (7,'经典酸菜鮰鱼', 5, 66.00, 'https://reggie-itcast.oss-cn-beijing.aliyuncs.com/5260ff39-986c-4a97-8850-2ec8c7583efc.png', '原料：酸菜，江团，鮰鱼', 1, '2022-06-10 09:46:02', '2022-06-10 09:46:02');
insert into dish (id, name, category_id, price, image, description, status, create_time, update_time) values (8,'蜀味水煮草鱼', 5, 38.00, 'https://reggie-itcast.oss-cn-beijing.aliyuncs.com/a6953d5a-4c18-4b30-9319-4926ee77261f.png', '原料：草鱼，汤', 1, '2022-06-10 09:48:37', '2022-06-10 09:48:37');
insert into dish (id, name, category_id, price, image, description, status, create_time, update_time) values (9,'清炒小油菜', 6, 18.00, 'https://reggie-itcast.oss-cn-beijing.aliyuncs.com/3613d38e-5614-41c2-90ed-ff175bf50716.png', '原料：小油菜', 1, '2022-06-10 09:51:46', '2022-06-10 09:51:46');
insert into dish (id, name, category_id, price, image, description, status, create_time, update_time) values (10,'蒜蓉娃娃菜', 6, 18.00, 'https://reggie-itcast.oss-cn-beijing.aliyuncs.com/4879ed66-3860-4b28-ba14-306ac025fdec.png', '原料：蒜，娃娃菜', 1, '2022-06-10 09:53:37', '2022-06-10 09:53:37');
insert into dish (id, name, category_id, price, image, description, status, create_time, update_time) values (11,'清炒西兰花', 6, 18.00, 'https://reggie-itcast.oss-cn-beijing.aliyuncs.com/e9ec4ba4-4b22-4fc8-9be0-4946e6aeb937.png', '原料：西兰花', 1, '2022-06-10 09:55:44', '2022-06-10 09:55:44');
insert into dish (id, name, category_id, price, image, description, status, create_time, update_time) values (12,'炝炒圆白菜', 6, 18.00, 'https://reggie-itcast.oss-cn-beijing.aliyuncs.com/22f59feb-0d44-430e-a6cd-6a49f27453ca.png', '原料：圆白菜', 1, '2022-06-10 09:58:35', '2022-06-10 09:58:35');
insert into dish (id, name, category_id, price, image, description, status, create_time, update_time) values (13,'清蒸鲈鱼', 5, 98.00, 'https://reggie-itcast.oss-cn-beijing.aliyuncs.com/c18b5c67-3b71-466c-a75a-e63c6449f21c.png', '原料：鲈鱼', 1, '2022-06-10 10:12:28', '2022-06-10 10:12:28');
insert into dish (id, name, category_id, price, image, description, status, create_time, update_time) values (14,'东坡肘子', 5, 138.00, 'https://reggie-itcast.oss-cn-beijing.aliyuncs.com/a80a4b8c-c93e-4f43-ac8a-856b0d5cc451.png', '原料：猪肘棒', 1, '2022-06-10 10:24:03', '2022-06-10 10:24:03');
insert into dish (id, name, category_id, price, image, description, status, create_time, update_time) values (15,'梅菜扣肉', 5, 58.00, 'https://reggie-itcast.oss-cn-beijing.aliyuncs.com/6080b118-e30a-4577-aab4-45042e3f88be.png', '原料：猪肉，梅菜', 1, '2022-06-10 10:26:03', '2022-06-10 10:26:03');
insert into dish (id, name, category_id, price, image, description, status, create_time, update_time) values (16,'剁椒鱼头', 5, 66.00, 'https://reggie-itcast.oss-cn-beijing.aliyuncs.com/13da832f-ef2c-484d-8370-5934a1045a06.png', '原料：鲢鱼，剁椒', 1, '2022-06-10 10:28:54', '2022-06-10 10:28:54');
insert into dish (id, name, category_id, price, image, description, status, create_time, update_time) values (17,'馋嘴牛蛙', 5, 98.00, 'https://reggie-itcast.oss-cn-beijing.aliyuncs.com/7a55b845-1f2b-41fa-9486-76d187ee9ee1.png', '配料：鲜活牛蛙，丝瓜，黄豆芽', 1, '2022-06-10 10:37:52', '2022-06-10 10:37:52');
insert into dish (id, name, category_id, price, image, description, status, create_time, update_time) values (18,'鸡蛋汤', 7, 4.00, 'https://reggie-itcast.oss-cn-beijing.aliyuncs.com/c09a0ee8-9d19-428d-81b9-746221824113.png', '配料：鸡蛋，紫菜', 1, '2022-06-10 10:54:25', '2022-06-10 10:54:25');
insert into dish (id, name, category_id, price, image, description, status, create_time, update_time) values (19,'平菇豆腐汤', 7, 6.00, 'https://reggie-itcast.oss-cn-beijing.aliyuncs.com/16d0a3d6-2253-4cfc-9b49-bf7bd9eb2ad2.png', '配料：豆腐，平菇', 1, '2022-06-10 10:55:02', '2022-06-10 10:55:02');

-- setmeal
insert into setmeal (id, category_id, name, price, status, description, image, create_time, update_time) values (1, 4, '商务套餐A', 20.00, 1, '', 'https://reggie-itcast.oss-cn-beijing.aliyuncs.com/21a5ed3a-97f6-447a-af9d-53deabfb5661.png', '2022-06-10 10:58:09', '2022-06-10 10:58:09');
insert into setmeal (id, category_id, name, price, status, description, image, create_time, update_time) values (2, 4, '商务套餐B', 22.00, 1, '', 'https://reggie-itcast.oss-cn-beijing.aliyuncs.com/8d0075f8-9008-4390-94ca-2ca631440304.png', '2022-06-10 11:00:13', '2022-06-10 11:11:37');
insert into setmeal (id, category_id, name, price, status, description, image, create_time, update_time) values (3, 3, '人气套餐A', 49.00, 1, '', 'https://reggie-itcast.oss-cn-beijing.aliyuncs.com/8979566b-0e17-462b-81d8-8dbace4138f4.png', '2022-06-10 11:11:23', '2022-06-10 11:11:23');

-- setmeal_dish
insert into setmeal_dish (id, setmeal_id, dish_id, copies) values (1, 1, 1, 1);
insert into setmeal_dish (id, setmeal_id, dish_id, copies) values (2, 1, 4, 1);
insert into setmeal_dish (id, setmeal_id, dish_id, copies) values (3, 1, 11, 1);
insert into setmeal_dish (id, setmeal_id, dish_id, copies) values (4, 2, 2, 1);
insert into setmeal_dish (id, setmeal_id, dish_id, copies) values (5, 2, 4, 1);
insert into setmeal_dish (id, setmeal_id, dish_id, copies) values (6, 2, 9, 1);
insert into setmeal_dish (id, setmeal_id, dish_id, copies) values (7, 3, 2, 1);
insert into setmeal_dish (id, setmeal_id, dish_id, copies) values (8, 3, 6, 1);
insert into setmeal_dish (id, setmeal_id, dish_id, copies) values (9, 3, 5, 1);



