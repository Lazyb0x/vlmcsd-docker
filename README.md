# VLMCSD for Docker

Deploy vlmcsd service on Docker container

```bash
git clone https://github.com/Lazyb0x/vlmcsd-docker.git vlmcsd
cd vlmcsd

git clone --branch master --single-branch https://github.com/Wind4/vlmcsd.git

# Use docker-compose service
docker-compose build
docker-compose up -d

# or docker build image
docker build -t vlmcsd .
docker run -idt -p 1688:1688 vlmcsd
```

修改内容：

1. 把下载源码的操作从 Dockerfile 里面拿出来
2. 添加了日志的输出