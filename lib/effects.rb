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
end
