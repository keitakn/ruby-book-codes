# frozen_string_literal: true

require "minitest/autorun"
require "./lib/convert_hash_systax"

# ハッシュ記法変換のテストクラス
class ConvertHashSyntaxTest < Minitest::Test
  # ハッシュ記法変換メソッドのテスト
  def test_convert_hash_syntax
    assert_equal "{}", convert_hash_syntax("{}")
  end
end
