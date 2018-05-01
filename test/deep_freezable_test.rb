# frozen_string_literal: true

require "minitest/autorun"
require "./lib/deep_freezable"

# deep_freeze機能のテスト
class DeepFreezableTest < Minitest::Test
  # test_deep_freezeメソッドのテスト
  def test_deep_freeze
    assert DeepFreezable
  end
end
