# allowlist

[OpenGFW][OpenGFW] 的白名单配置，以及配套更新脚本，供参考。

## 启动

目前配的本地模式，通过 nft 处理 INPUT OUTPUT 本机连接。
可以修改 `config.yaml` 的 `io.local` 为 `false`，启用路由模式，处理 FORWARD 上的连接。

```sh
./OpenGFW -c config.yaml rules.yaml
```

## 配置白名单

白名单域名在 `data/allow` 文件里，一行一个，修改保存后，运行 `./update.sh`，会使用 [domain-list-custom][domain-list-custom] 生成 `publish/geosite.dat`，以及触发正在运行的 OpenGFW 进程的配置热更新。

## Credits

- [OpenGFW][OpenGFW]
- [domain-list-custom][domain-list-custom]

[OpenGFW]: https://github.com/apernet/OpenGFW
[domain-list-custom]: https://github.com/Loyalsoldier/domain-list-custom
