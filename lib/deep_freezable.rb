# frozen_string_literal: true

# 配列、ハッシュをfreezeする機能
module DeepFreezable
  # 配列とハッシュの中身を不変にする
  # @param [Hash | Array]
  def deep_freeze(array_or_hash)
    case array_or_hash
    when Array
      array_or_hash.each do |element|
        element.freeze
      end
    when Hash
      array_or_hash.each do |key, value|
        key.freeze
        value.freeze
      end
    end
    array_or_hash.freeze
  end
end
