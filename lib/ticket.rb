# frozen_string_literal: true

# 電車の切符を表すクラス
class Ticket
  attr_reader :fare, :stamped_at

  # @param [String]
  def initialize(fare)
    @fare = fare
  end

  # 駅名をセットする
  #
  # @param [String]
  def stamp(name)
    @stamped_at = name
  end
end
