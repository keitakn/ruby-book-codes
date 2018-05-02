# frozen_string_literal: true

require "minitest/autorun"
require "./lib/convert_hash_syntax"

# ハッシュ記法変換のテストクラス
class ConvertHashSyntaxTest < Minitest::Test
  # ハッシュ記法変換メソッドのテスト
  def test_convert_hash_syntax
    old_syntax = <<~TEXT
      {
        :name => 'Alice',
        :age => 20,
        :gender => :female
      }
    TEXT

    expected = <<~TEXT
      {
        name: 'Alice',
        age: 20,
        gender: :female
      }
    TEXT
    assert_equal expected, convert_hash_syntax(old_syntax)
  end
end
