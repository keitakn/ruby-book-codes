# frozen_string_literal: true

# 改札機クラス
class Gate
  # @param [String]
  def initialize(name)
    @name = name
  end

  # 入場する
  #
  # @param [Ticket]
  def enter(ticket)
  end

  # 出場する
  #
  # @param [Ticket]
  def exit(ticket)
    true
  end
end
