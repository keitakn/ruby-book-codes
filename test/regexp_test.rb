# frozen_string_literal: true

require "minitest/autorun"
require "./lib/regexp"

# lib/regexp.rbのテストクラス
class RegexpTest < Minitest::Test
  # full_match_countメソッドのテスト
  def test_full_match_count
    text = <<-TEXT
sounds that are pleasing to the ear.
ear is the organ of the sense of hearing.
I can't bear it.
Why on earth would anyone feel sorry for you?
    TEXT

    assert_equal 2, full_match_count(text, "ear")

    text = <<-TEXT
<td>
<%= link_to I18n.t('.show'), user %>
<%= link_to t('.edit'), edit_user_path(user) %>
</td>
    TEXT

    assert_equal 2, full_match_count(text, "t")
  end

  # extract_at_lookbehindメソッドのテスト
  def test_extract_at_lookbehind
    text = <<-TEXT
type=zip; filename=users.zip; size=1024;
type=xml; filename=posts.xml; size=2048;
    TEXT

    assert_equal %w(users.zip posts.xml), extract_at_lookbehind(text)
  end
end
