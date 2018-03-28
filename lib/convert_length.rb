# frozen_string_literal: true

# 長さの単位を変換する
#
# @param length [Number]
# @param unit_from [String]
# @param unit_to [String]
# @return [Number]
def convert_length(length, unit_from, unit_to)
  units = { m: 1.0, ft: 3.28, in: 39.37 }

  (length / units[unit_from] * units[unit_to]).round(2)
end
