# frozen_string_literal: true

# 完全一致した数を返す
# @param text [String]
# @param search_Word [String]
# @return [Number]
def full_match_count(text, search_Word)
  result = text.scan /\b#{search_Word}\b/

  result.count
end

# 正規表現の「後読み」を使った抽出メソッド
# 検証用なので "filename" を抜き出すユースケースのみに対応
#
# @param text [String]
# @return [Array<String>]
def extract_at_lookbehind(text)
  text.scan(/(?<=filename=)[^;]+/)
end

# 正規表現の「先読み」を使った抽出メソッド
# 検証用なので ベース（bass）を担当しているメンバーの名前を抜き出すユースケースのみに対応
#
# @param text [String]
# @return [Array<String>]
def extract_at_lookahead(text)
  text.scan(/\w+(?=:bass)/)
end
