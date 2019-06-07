
## build container

```
./build_docker.sh
```

## get openconnect finger

```
docker run openconnect:latest openconnect 104.168.169.6:1443
```

这条命令执行后会失败，但是会打印出来server的指纹，保存一下，格式为

```
sha256:ea7b087175fa9a6047....
```

## 填写配置文件
打开docker-compose.yml文件

填写如下参数

```
OPEN_SERVERIP: 服务器IP
OPEN_SERVERPORT: 1443
OPEN_USERNAME: openconnect用户名
OPEN_PASSWORD: 密码
OPEN_FINGER: 上面的指纹 从sha开始，如sha256:ea7b087175fa9a6047....
```


## 启动

```
docker-compose up -d
```

## 连接
启动后会提供http和https代理，IP就是本机IP，端口为3128

强烈建议使用chrome插件，传送门 https://github.com/cao19881125/shadow-chrome
