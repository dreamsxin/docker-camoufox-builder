docker-camoufox-builder
=======================

```shell
git clone https://github.com/dreamsxin/docker-camoufox-builder.git
cd docker-camoufox-builder
docker build -t="dreamsxin/camoufox-builder:v1.0" .
# 查看镜像
docker images dreamsxin/camoufox-builder
# 运行容器 -d 后台运行 -t 表示返回一个 tty 终端，-i 表示打开容器的标准输入，使用这个命令可以得到一个容器的 shell 终端 -p 端口映射
docker run -dti --name camoufox-builder -p 8080:80 dreamsxin/camoufox-builder:v1.0
# 查看运行的容器
docker ps

# 登录
docker login
# 给镜像打 tag
docker tag v1.0 dreamsxin/camoufox-builder:v1.0
# 上传镜像
docker push dreamsxin/camoufox-builder:v1.0
```
或者直接从Docker Hub下载镜像
```shell
docker pull dreamsxin/camoufox-builder
# -P：随机分配端口号
docker run -tiP --name camoufox-builder dreamsxin/camoufox-builder:v1.0
```

# 容器的操作

```shell
# 列出所有容器（包括未运行）
docker ps -a
## 使用后台模式和tty选项
docker run -dit 
# 启动已有容器
docker start [CONTAINER_NAME or CONTAINER_ID]
docker stop [CONTAINER_NAME or CONTAINER_ID]
# 删除
docker rm [CONTAINER_NAME or CONTAINER_ID]
# 重启
docker restart [CONTAINER_NAME or CONTAINER_ID]
# 调出后台容器
docker attach [CONTAINER_NAME or CONTAINER_ID]
```

# 保存容器为新的镜像

```shell
sudo docker ps
docker commit [CONTAINER_NAME or CONTAINER_ID] dreamsxin/phalcon7:v1.1
```