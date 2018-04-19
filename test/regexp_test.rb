# frozen_string_literal: true

require "minitest/autorun"
require "./lib/regexp"

# lib/regexp.rbのテストクラス
class RegexpTest < Minitest::Test
  # full_match_countメソッドのテスト
  def test_full_match_count
    text = <<-TEXT
sounds that are pleasing to the ear.
ear is the organ of the sense of hearing.
I can't bear it.
Why on earth would anyone feel sorry for you?
    TEXT

    assert_equal 2, full_match_count(text, "ear")
  end
end
