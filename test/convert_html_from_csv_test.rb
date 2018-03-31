# frozen_string_literal: true

require "minitest/autorun"
require "./lib/convert_html_from_csv"

# HTML → CSV変換メソッドのテストクラス
class ConvertHtmlFromCsvTest < Minitest::Test
  # HTML → CSV変換メソッドのテスト
  def test_convert_html_from_csv
    html = <<-TEXT
    <select name="game_console">
    <option value="wii_u">Wii U</option>
    <option value="ps4">プレステ4</option>
    <option value="gb">ゲームボーイ</option>
    </select>
    TEXT

    expected = <<-TEXT
wii_u,Wii U
ps4,プレステ4
gb,ゲームボーイ
    TEXT

    assert_equal expected, convert_html_from_csv(html)

    # 表示テキストがないHTML
    html = <<-TEXT
    <select name="game_console">
    <option value="none"></option>
    <option value="wii_u">Wii U</option>
    <option value="ps4">プレステ4</option>
    <option value="gb">ゲームボーイ</option>
    </select>
    TEXT

    expected = <<-TEXT
none
wii_u,Wii U
ps4,プレステ4
gb,ゲームボーイ
    TEXT

    assert_equal expected, convert_html_from_csv(html)

    # selected を指定してあるHTML
    html = <<-TEXT
    <select name="game_console">
    <option value="none"></option>
    <option value="wii_u" selected>Wii U</option>
    <option value="ps4">プレステ4</option>
    <option value="gb">ゲームボーイ</option>
    </select>
    TEXT

    expected = <<-TEXT
none
wii_u,Wii U
ps4,プレステ4
gb,ゲームボーイ
    TEXT

    assert_equal expected, convert_html_from_csv(html)
  end
end
