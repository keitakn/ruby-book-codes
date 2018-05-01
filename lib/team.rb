# frozen_string_literal: true

require "./lib/deep_freezable"

# DeepFreezableの動作確認用ダミークラス
# 国名を管理する事を想定
class Team
  extend DeepFreezable

  COUNTRIES = deep_freeze(["Japan", "US", "India"])
end
