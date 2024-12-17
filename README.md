# 仓库介绍
【黑马程序员JavaWeb开发教程，实现javaweb企业开发全流程（涵盖Spring+MyBatis+SpringMVC+SpringBoot等）】https://www.bilibili.com/video/BV1m84y1w7Tb?vd_source=9fed3cefc266aa5b3895aaab6e6214f5

本仓库包含以上课程2023年JavaWeb黑马程序员的全部资料，包含ppt，代码，讲义，资料。不包括一些软件安装包，因为这些属于大文件，上传需要使用git lfs 一个一个上传，太麻烦。

# 使用 git 上传小文件到远程仓库：
1. github上新建一个仓库，填入描述，加入README文件

2. 本地操作（本地仓库不包含README文件前提下），本地分支为master，远程分支为origin，依次执行：    

    ```
    git init
    git add .  
    git config --global user.name "github账户名"   
    git config --global user.email "邮箱"  
    git commit -m "my first commit"  
    git remote add origin  https://github.com/HNUrookie1/xxx.git  
    git pull --rebase origin origin  
    git push -u origin master:origin  
    ```

> 注意：  git push -u origin master:origin 执行成功后，会将本地master分支指向远程分支origin。也就是branch 'master' set up to track 'origin/origin'.

# 使用 git lfs 上传单个大文件到远程仓库：

首先要确保git lfs本地已经安装，再执行以下命令：

```
git lfs install
git lfs track "大文件的名称"  
git add .gitattributes  
git add "上面追踪的大文件的名称"  
git commit -m "提交说明"  
git push origin master:origin
```

