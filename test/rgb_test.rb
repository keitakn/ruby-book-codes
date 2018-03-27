# frozen_string_literal: true

require "minitest/autorun"
require "./lib/rgb"

# RGBメソッドのテストクラス
class RgbTest < Minitest::Test
  # to_hexメソッドのテスト
  def test_to_hex
    assert_equal "#000000", to_hex(0, 0, 0)
    assert_equal "#ffffff", to_hex(255, 255, 255)
  end

  # to_intsメソッドのテスト
  def test_to_ints
    assert_equal [0, 0, 0], to_ints("#000000")
  end
end
