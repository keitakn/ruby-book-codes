# Rubyのデバッグ方法まとめ

## pp

表示させるだけならこれが一番便利です。

例えば変数 `effect` の中身を表示させたい場合は下記のようにします。

```ruby
  def test_reverse
    effect = Effects.reverse

    # デバッグコード
    pp effect

    assert_equal "ybuR si !nuf", effect.call("Ruby is fun!")
  end
```

表示結果は下記のようになります。

```
#<Proc:0x00007f81f30720e8@/Users/keita/git/ruby-book-codes/lib/effects.rb:9 (lambda)>
```

printデバッグと違ってオブジェクトの中身もキレイに表示させてくれるところが良いです。

以前のRubyバージョンだと `require "pp"` しないと使えなかったですがいつの間にか読み込まなくても使えるようになっていました。

## tap

メソッドチェーンをデバッグする時に便利なメソッドです。

以下のコードは [Ruby本](https://github.com/JunichiIto/ruby-book-codes) で紹介されていたコードです。

```ruby
# ブロック引数のsには、tapメソッドのレシーバ（ここでは文字列の"hello"）が入る
a = 'hello'.tap { |s| puts "<<#{s}>>" }
#=> <<hello>>

# tapメソッドはレシーバをそのまま返す（つまり a = 'hello' と同じ結果になる）
a #=> "hello"

# ----------------------------------------

# メソッドチェーンを使っているこのコードをデバッグしたい
'#043c78'.scan(/\w\w/).map(&:hex)

# tapメソッドを使って、scanメソッドの戻り値をターミナルに表示する
'#043c78'.scan(/\w\w/).tap { |rgb| p rgb }.map(&:hex)
#=> ["04", "3c", "78"]
```

## ログデバッグ

ログに変数の中身を出力する方法です。

下記は `Ruby on Rails` での実行例になります。

```ruby
class User < ApplicationRecord
  def facebook_username
    info = facebook_auth.auth_info.info
    # ログに変数info,nicknameの値を出力する
    logger.debug "[DEBUG] info.name : #{info.name}"
    info.nickname
  end
end
```

このコードは [Ruby本](https://github.com/JunichiIto/ruby-book-codes) で紹介されていたコードです。

## Debuggerを使う

まずはDebugger [Byebug](https://github.com/deivid-rodriguez/byebug/) をインストールします。

プロジェクト内にpackageとしてインストールしたいので下記のコマンドを実行します。

```
bundle add byebug --group "development, test"
```

以下のコマンドで `byebug` から目的のプログラムを実行します。

```
bundle exec byebug test/fizz_buzz_test.rb
```

使い方に関しては [printデバッグにさようなら！Ruby初心者のためのByebugチュートリアル](https://qiita.com/jnchito/items/5aaf323ab4f24b526a61) という記事が分かりやすいです。

## RubyMineのDebuggerを使う

RubyMineを持っていればそれでデバッグするのが一番ラクだったりします。

ローカル上で開発を行っている場合はRubyMineの機能を使えばデバッグに困る事はないでしょう。

リモートデバッグを行う為には設定が必要なので、そのあたりに関しては時間があれば別の記事にまとめます。
