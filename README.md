# ruby-book-codes

最近のRubyを学習する為のリポジトリです。

[JunichiIto](https://github.com/JunichiIto) さんの [ruby-book-codes](https://github.com/JunichiIto/ruby-book-codes) をベースに自分なりに拡張を行っていきます。

本リポジトリはトレーニング用であり、それ以上に意図はありません。

## Getting Started

前提として Ruby2.5を利用しているとします。

さらにRubyのインストールは `rbenv` で行っている前提です。

プロジェクトルートで以下のコマンドを実行して下さい。

```bash
rbenv exec bundle install --path vendor/bundle
```

`--path vendor/bundle` でパスを指定しています。

これによりGemパッケージが `vendor/bundle` へインストールされます。

一度でもプロジェクトルートで上記のコマンドを実行していれば次から以下のコマンドでOKです。

```bash
bundle install
```

`.bundle/config` に 以下のような記述が書いてあれば `vendor/bundle` にGemパッケージをインストールする設定になっています。

```text
BUNDLE_PATH: "vendor/bundle"
```

## Rubocopによる静的コード解析

以下のコマンドで実行します。（自動的に修正を適応する）

```bash
bundle exec rubocop -a
```

結果のみを確認する時は `-a` オプションを外します。

```bash
bundle exec rubocop
```

設定ルールに関しては [rubocop-rails](https://github.com/toshimaru/rubocop-rails) を利用しています。

（参考）[Railsと同じRuboCopの設定が利用できるrubocop-rails gemを作った](http://blog.toshimaru.net/rubocop-rails/)

## YARD

本プロジェクトではYARD形式でDOCを記載します。

- https://yardoc.org/
- http://morizyun.github.io/blog/yard-rails-ruby-gem-document-html/
