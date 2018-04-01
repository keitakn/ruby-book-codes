# frozen_string_literal: true

# テキストからタブとスペースを取り除く
#
# @param [String]
# @return [String]
def remove_tab_and_space(text)
  text.gsub(/:\s*/, ": ")
end

# herokuのログから特定の文字列を抜き出す
#
# @param [String]
# @return [String]
def heroku_log_replace(text)
  text.gsub(/^.+heroku\/(api|scheduler).+\n/, "")
end
