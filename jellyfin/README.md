# Compose文档

* `console` 控制台
    * `init` 第一次部署
    * `up` 部署
    * `save` 保存镜像
    * `load` 加载镜像
* [docker-compose.override.yml](https://jellyfin.org/docs/general/installation/container)
    * `jellyfin`
        * `volumes` 可以挂载外部库
        * 添加GPU（未验证）

## 注意

* jellyfin_udp目前用于局域网服务发现，在不受信任的网络中不要监听
* jellyfin检查插件可能会连接多个域名，若需要在线安装插件都得加白名单
* 默认配置不支持需要转码功能的Jellyfin，基础功能不受影响

## 问题

* 无法启动：先部署`lan-proxy`
* `Windows Line Breaker` 强制cmd换行，避免中文注释后的环境变量无法加载
