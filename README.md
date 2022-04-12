# Ruby

## Setup

### Rubyをinstall

`rbenv`でinstallしてください。

```rb
brew install rbenv
```

```sh
rbenv install --list
rbenv install *** #環境に合わせて必要なrubyをinstallしてください。
rbenv global ***
```

### bundleをinstall

まずグローバル環境にbundleをinstallします。

```sh
gem install bundle
```

次に`bundle exec`でローカル環境に`Gemfile`に書かれたライブラリをinstallします

```
bundle install --path=vendor/bundle
```

### rubocopでコードを整形する

```rb
bundle exec rubocop -A
```

## 概要
今後増えるであろうRubyの勉強場所としてのリポジトリです。

## 更新履歴

- 2016_04_20
  -  Rubyの基礎文法を学ぶ
- 2016_05_24
  - [ruby 2.3.1をCentOS7に導入する。](http://qiita.com/Fendo181/items/d14ebfb148223c8e5ecb)
  - [Ruby 2.3.1でFizzBuzz問題を解く。](http://qiita.com/Fendo181/items/425293e8e638d7fd7cea)
- 2017_02_22
  - [Ruby基礎文法](http://qiita.com/Fendo181/items/eb2cb17f32d99aa01f59)
- 2017_11_25
  - [YawarakaRubyを追加](https://gist.github.com/udzura/7548163#file-yawaraka-md)
