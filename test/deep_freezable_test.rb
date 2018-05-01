# frozen_string_literal: true

require "minitest/autorun"
require "./lib/bank"
require "./lib/team"

# deep_freeze機能のテスト
class DeepFreezableTest < Minitest::Test
  # 配列が正しく処理されるかテストする
  def test_deep_freeze_to_array
    # 意図した配列が設定されているか確認する
    assert_equal ["Japan", "US", "India"], Team::COUNTRIES
    # 配列自身がfreezeされているか？
    assert Team::COUNTRIES.frozen?
    # 配列の要素がすべてfreezeされているか？
    assert Team::COUNTRIES.all? { |country| country.frozen? }
  end

  # ハッシュが正しく処理されるかテストする
  def test_deep_freeze_to_hash
    # 意図したハッシュが設定されているか確認する
    assert_equal(
      { "Japan" => "yen", "US" => "dollar", "India" => "rupee" },
      Bank::CURRENCIES
    )
    # ハッシュ自身がfreezeされているか？
    assert Bank::CURRENCIES.frozen?
    # ハッシュの要素（キーと値）がすべてfreezeされているか？
    assert Bank::CURRENCIES.all? { |key, value| key.frozen? && value.frozen? }
  end
end
