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
