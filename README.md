* ## 安装 homebrew

```bash
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew install tree
$ brew install wget
```

* ## 安装 ruby 版本管理器 rbenv

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