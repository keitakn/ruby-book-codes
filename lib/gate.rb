# frozen_string_literal: true

# 改札機クラス
class Gate
  STATIONS = [:harajuku, :shibuya, :ebisu]
  FARES = [150, 190]

  # @param [String]
  def initialize(name)
    @name = name
  end

  # 入場する
  #
  # @param [Ticket]
  def enter(ticket)
    ticket.stamp(@name)
  end

  # 出場する
  #
  # @param [Ticket]
  def exit(ticket)
    fare = calc_fare(ticket)
    fare <= ticket.fare
  end

  private

    # 運賃を計算する
    #
    # @param [Ticket]
    def calc_fare(ticket)
      from = STATIONS.index(ticket.stamped_at)
      to = STATIONS.index(@name)
      distance = to - from
      FARES[distance - 1]
    end
end
