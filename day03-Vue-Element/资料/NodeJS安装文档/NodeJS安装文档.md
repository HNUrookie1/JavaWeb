# NodeJS安装

## 1. 双击资料中提供的安装包 

![image-20221008213131316](assets/image-20221008213131316.png)  

 ![image-20220818155659933](assets/image-20220818155659933.png) 







## 2. 选择安装目录

选择安装到一个，没有中文，没有空格的目录下（新建一个文件夹NodeJS）

![image-20220818160024929](assets/image-20220818160024929.png) 

![image-20220818160241172](assets/image-20220818160241172.png) 







## 3. 验证NodeJS环境变量

NodeJS 安装完毕后，会自动配置好环境变量，我们验证一下是否安装成功，通过： node -v

![image-20220818160357897](assets/image-20220818160357897.png) 





## 4. 配置npm的全局安装路径

 <img src="assets/image-20220818161218016.png" alt="image-20220818161218016" style="zoom:67%;" />



使用管理员身份运行命令行，在命令行中，执行如下指令：

```
npm config set prefix "E:\develop\NodeJS"
```

注意：E:\develop\NodeJS 这个目录是NodeJS的安装目录







## 5. 切换npm的淘宝镜像

使用管理员身份运行命令行，在命令行中，执行如下指令：

```
npm config set registry https://registry.npm.taobao.org
```







## 6. 安装Vue-cli

使用管理员身份运行命令行，在命令行中，执行如下指令：

```
npm install -g @vue/cli
```

这个过程中，会联网下载，可能会耗时几分钟，耐心等待。

![image-20220818161134576](assets/image-20220818161134576.png) 















