# frozen_string_literal: true

require "minitest/autorun"
require "./lib/fizz_buzz"

# fizz_buzzメソッドのテストクラス
class FizzBuzzTest < Minitest::Test
  # fizz_buzzメソッドのテスト
  def test_fizz_buzz
    assert_equal "1", fizz_buzz(1)
    assert_equal "2", fizz_buzz(2)
    assert_equal "Fizz", fizz_buzz(3)
    assert_equal "4", fizz_buzz(4)
    assert_equal "Buzz", fizz_buzz(5)
    assert_equal "Fizz", fizz_buzz(6)
    assert_equal "Fizz Buzz", fizz_buzz(15)
  end
end
