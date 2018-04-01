# frozen_string_literal: true

require "minitest/autorun"
require "./lib/trim"

# テキスト整形のテストクラス
class TrimTest < Minitest::Test
  # タブ、スペースを取り除くメソッドのテスト
  def test_remove_tab_and_space
    text = <<-TEXT
{
  japan:	'yen',
  america:'dollar',
  italy:     'euro'
}
    TEXT

    expected = <<-TEXT
{
  japan: 'yen',
  america: 'dollar',
  italy: 'euro'
}
    TEXT

    assert_equal expected, remove_tab_and_space(text)

    text = <<-TEXT
{
  cat:	'マンチカン',
  dog:'カニーヘンダックス',
  rabbit:     'ネザーランドドワーフ'
}
    TEXT

    expected = <<-TEXT
{
  cat: 'マンチカン',
  dog: 'カニーヘンダックス',
  rabbit: 'ネザーランドドワーフ'
}
    TEXT

    assert_equal expected, remove_tab_and_space(text)
  end
end
