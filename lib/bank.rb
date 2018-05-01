# frozen_string_literal: true

require "./lib/deep_freezable"

# DeepFreezableの動作確認用ダミークラス
# 国ごとの通貨管理を想定
class Bank
  extend DeepFreezable

  CURRENCIES = deep_freeze("Japan" => "yen", "US" => "dollar", "India" => "rupee")
end
