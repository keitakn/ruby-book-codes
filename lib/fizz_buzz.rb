# frozen_string_literal: true

# @param n [Number] 数値
# @return [String]
def fizz_buzz(n)
  if n % 15 == 0
    return "Fizz Buzz"
  end

  if n % 3 == 0
    return "Fizz"
  end

  if n % 5 == 0
    return "Buzz"
  end

  n.to_s
end
