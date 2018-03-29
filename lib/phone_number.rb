# frozen_string_literal: true

# 電話番号かどうかを判定
#
# @param [String]
# @return [Boolean]
def phone_number?(value)
  result = value.scan /\d{2,5}-\d{1,4}-\d{4}/

  if result[0] == value.to_s
    return true
  end

  false
end
