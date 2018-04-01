# frozen_string_literal: true

# テキストからタブとスペースを取り除く
#
# @param [String]
# @return [String]
def remove_tab_and_space(text)
  text.gsub(/:\s*/, ": ")
end

# 特定の文字列を取り除く
#
# @param [Regexp]
# @param [String]
# @return [String]
def remove_particular_string(regexp, text)
  text.gsub(regexp, "")
end
