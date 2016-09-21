## 安装 homebrew

```bash
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew install tree
$ brew install wget
```

## 安装 ruby 版本管理器 rbenv

```bash
$ brew install rbenv 
$ echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
$ source ~/.bash_profile
```

```bash
$ rbenv install -l
$ rbenv install 2.3.1
$ rbenv global 2.3.1
```

```bash
$ gem sources --add https://ruby.taobao.org/ --remove https://rubygems.org/
$ gem install cocoapods
```

## 安装 proxychains-ng

```bash
$ brew install proxychains-ng
```

* proxychains 配置文件 ~/.proxychains/proxychains.conf
```
strict_chain
proxy_dns 
remote_dns_subnet 224
tcp_read_time_out 15000
tcp_connect_time_out 8000
localnet 127.0.0.0/255.0.0.0
quiet_mode

[ProxyList]
socks5  127.0.0.1 1080
```

* proxychains 使用
```
proxychains4 curl https://www.twitter.com/
```
```
proxychains4 bash
curl https://www.twitter.com/
```