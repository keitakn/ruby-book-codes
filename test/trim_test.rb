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

    text = "Hello"

    assert_equal text, remove_tab_and_space(text)
  end

  # 特定の文字列を取り除くテスト
  def test_remove_particular_string
    heroku_log = <<-TEXT
Feb 14 07:33:02 app/web.1:  Completed 302 Found ...
Feb 14 07:36:46 heroku/api:  Starting process ...
Feb 14 07:36:50 heroku/scheduler.7625:  Starting ...
Feb 14 07:36:50 heroku/scheduler.7625:  State ...
Feb 14 07:36:54 heroku/router:  at=info method=...
Feb 14 07:36:54 app/web.1:  Started HEAD "/" ...
Feb 14 07:36:54 app/web.1:  Completed 200 ...
    TEXT

    expected = <<-TEXT
Feb 14 07:33:02 app/web.1:  Completed 302 Found ...
Feb 14 07:36:54 heroku/router:  at=info method=...
Feb 14 07:36:54 app/web.1:  Started HEAD "/" ...
Feb 14 07:36:54 app/web.1:  Completed 200 ...
    TEXT

    assert_equal expected, remove_particular_string(heroku_log)
  end
end
