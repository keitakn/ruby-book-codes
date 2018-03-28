# frozen_string_literal: true

require "minitest/autorun"
require "./lib/convert_length"

# 長さの単位変換プログラムのテストクラス
class ConvertLengthTest < Minitest::Test
  # 長さの単位変換メソッドのテスト
  def test_convert_length
    assert_equal 39.37, convert_length(1, "m", "in")
  end
end
