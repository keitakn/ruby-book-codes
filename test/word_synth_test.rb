# frozen_string_literal: true

require "minitest/autorun"
require "./lib/word_synth"
require "./lib/effects"

# WordSynthクラスのテスト
class WordSynthTest < Minitest::Test
  # 効果が何もない時のテスト
  def test_play_without_effects
    assert WordSynth
    assert Effects
  end
end
