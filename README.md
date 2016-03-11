## 介绍

这是将之前开发的项目[flask_blog](https://github.com/chaonet/flask_blog)制作成了 Docker image。

开发环境：Mac OS

## 使用方法

```
# 从 Docker Hub 下载 image

docker pull chaonet/flask_blog

# 用户注册需要邮箱验证，项目中发送验证邮件使用的是 qq 邮箱，填写自己对应的信息即可

docker run -e "MAIL_USERNAME=qq_number@qq.com" -e "MAIL_PASSWORD=token_from_qq" -d -p docker-machine-port:8000 chaonet/flask_blog
```

在浏览器，通过`docker-machine-ip:docker-machine-port`访问

只是，收到的验证邮件中，验证连接的 IP 地址，依然是`docker-machine-ip`

