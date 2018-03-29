# frozen_string_literal: true

require "minitest/autorun"
require "./lib/phone_number"

# 電話番号のテストクラス
class PhoneNumberTest < Minitest::Test
  # 電話番号かどうかをテストする
  def test_phone_number?
    assert_equal true, phone_number?("03-1234-5678")
    assert_equal true, phone_number?("090-1234-5678")
    assert_equal true, phone_number?("0795-12-3456")
    assert_equal true, phone_number?("04992-1-2345")
    assert_equal true, phone_number?("03(1234)5678")
    assert_equal true, phone_number?("0795(12)3456")
    assert_equal false, phone_number?("489-2121-4256")
  end
end
