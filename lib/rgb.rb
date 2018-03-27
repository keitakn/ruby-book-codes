# frozen_string_literal: true

# @param r [Number]
# @param g [Number]
# @param b [Number]
# @return [String]
def to_hex(r, g, b)
  [r, g, b].inject("#") do |hex, n|
    hex + n.to_s(16).rjust(2, "0")
  end
end

# @param hex [String]
# @return [Array<Number>]
def to_ints(hex)
  r, g, b = hex[1..2], hex[3..4], hex[5..6]

  [r, g, b].map do |s|
    s.hex
  end
end
