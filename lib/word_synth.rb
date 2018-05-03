# frozen_string_literal: true

# ワードシンセサイザー
class WordSynth
  def initialize
    @effects = []
  end

  # エフェクトを追加する
  #
  # @param [Proc]
  def add_effect(effect)
    @effects << effect
  end

  # エフェクトを適応しつつ実行する
  def play(original_words)
    @effects.inject(original_words) do |words, effect|
      effect.call(words)
    end
  end
end
