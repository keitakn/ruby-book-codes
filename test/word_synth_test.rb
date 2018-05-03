# frozen_string_literal: true

require "minitest/autorun"
require "./lib/word_synth"
require "./lib/effects"

# WordSynthクラスのテスト
class WordSynthTest < Minitest::Test
  # 効果が何もない時のテスト
  def test_play_without_effects
    synth = WordSynth.new
    assert_equal "Ruby is fun!", synth.play("Ruby is fun!")
  end

  # リバース効果を与えて実行するテスト
  def test_play_with_reverse
    synth = WordSynth.new
    synth.add_effect(Effects.reverse)
    assert_equal "ybuR si !nuf", synth.play("Ruby is fun!")
  end

  # 復数の効果を与えて実行するテスト
  def test_play_with_many_effects
    synth = WordSynth.new
    synth.add_effect(Effects.echo(2))
    synth.add_effect(Effects.loud(3))
    synth.add_effect(Effects.reverse)
    assert_equal "!!!YYBBUURR !!!SSII !!!!!NNUUFF", synth.play("Ruby is fun!")
  end
end
