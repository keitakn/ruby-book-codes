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
  <<-TEXT
Feb 14 07:36:46 heroku/api:  Starting process ...
Feb 14 07:36:50 heroku/scheduler.7625:  Starting ...
Feb 14 07:36:50 heroku/scheduler.7625:  State ...
  TEXT
end
