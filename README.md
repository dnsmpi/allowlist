## 启动

目前配的本地模式，通过 nft 处理 INPUT OUTPUT 本机连接。
可以修改 `config.yaml` 的 `io.local` 为 `false`，启用路由模式，处理 FORWARD 上的连接。

```sh
./OpenGFW -c config.yaml rules.yaml
```

## 配置白名单

白名单域名在 `./data/allow` 文件里，一行一个，修改保存后，运行 `./update.sh`，会自动热重载 OpenGFW。
