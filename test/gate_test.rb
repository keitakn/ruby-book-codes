# frozen_string_literal: true

require "minitest/autorun"
require "./lib/gate"
require "./lib/ticket"

# 改札機プログラムのテスト
class GateTest < Minitest::Test
  # 改札機プログラムのテスト
  def test_gate
    harajuku = Gate.new(:harajuku)
    shibuya = Gate.new(:shibuya)

    ticket = Ticket.new(150)

    harajuku.enter(ticket)

    assert shibuya.exit(ticket)
  end
end
