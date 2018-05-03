# frozen_string_literal: true

require "minitest/autorun"
require "./lib/effects"

# エフェクトのテスト
class EffectsTest < Minitest::Test
  # 単語を逆順にする効果のテスト
  def test_reverse
    effect = Effects.reverse

    assert_equal "ybuR si !nuf", effect.call("Ruby is fun!")
  end

  # エコー効果のテスト
  def test_echo
    effect = Effects.echo(2)

    assert_equal "RRuubbyy iiss ffuunn!!", effect.call("Ruby is fun!")
  end
end
