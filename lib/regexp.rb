# frozen_string_literal: true

# 完全一致した数を返す
# @param text [String]
# @param search_Word [String]
# @return [Number]
def full_match_count(text, search_Word)
  result = text.scan /\b#{search_Word}\b/

  result.count
end
