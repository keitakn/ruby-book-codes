# frozen_string_literal: true

UNITS = { m: 1.0, ft: 3.28, in: 39.37 }

# 長さの単位を変換する
#
# @param length [Number]
# @param from [Symbol]
# @param to [Symbol]
# @return [Number]
def convert_length(length, from: :m, to: :in)
  (length / UNITS[from] * UNITS[to]).round(2)
end
