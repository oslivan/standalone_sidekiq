# README

## 启动 Web
```bash
bin/web
```

## 启动 Sidekiq Server
```bash
bin/server
```

## 执行 Worker 
```ruby
# bin/console

HelloWorker.perform_async('bob')
```

## 注意
+ Sidekiq 6.0 不支持 daemon 了，需要借助其它方式来实现
  daemonize，比如系统的 systemd 或者 eye 。
+ Sidekiq 6.0 不支持 logfile 设定，只会输出到
  stdout，所以也需要自己处理日志。
