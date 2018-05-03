# frozen_string_literal: true

# 単語に与える効果メソッドを定義する
module Effects
  # 単語を逆順にする効果メソッド
  #
  # @return [Proc]
  def self.reverse
    ->(words) do
      words.split(" ").map(&:reverse).join(" ")
    end
  end

  # エコー効果を与えるメソッド
  #
  # @return [Proc]
  def self.echo(rate)
    ->(words) do
      words.chars.map { |c| c == " " ? c : c * rate }.join
    end
  end

  # ラウド効果を与えるメソッド
  #
  # @return [Proc]
  def self.loud(level)
    ->(words) do
      words.split(" ").map { |word| word.upcase + "!" * level }.join(" ")
    end
  end
end
