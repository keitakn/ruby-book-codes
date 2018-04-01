# frozen_string_literal: true

# テキストからタブとスペースを取り除く
#
# @param [String]
# @return [String]
def remove_tab_and_space(text)
  text.gsub(/:\s*/, ": ")
end
