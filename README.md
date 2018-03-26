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
