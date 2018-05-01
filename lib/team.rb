# frozen_string_literal: true

require "./lib/deep_freezable"

# DeepFreezableの動作確認用ダミークラス
class Team
  extend DeepFreezable

  COUNTRIES = deep_freeze(["Japan", "US", "India"])
end
