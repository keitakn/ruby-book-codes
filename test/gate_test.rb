# frozen_string_literal: true

require "minitest/autorun"
require "./lib/gate"
require "./lib/ticket"

# 改札機プログラムのテスト
class GateTest < Minitest::Test
  # テストメソッド実行前にこのメソッドが毎回呼ばれる
  def setup
    @harajuku = Gate.new(:harajuku)
    @shibuya = Gate.new(:shibuya)
    @ebisu = Gate.new(:ebisu)
  end

  # 原宿 → 渋谷の移動が出来る事（trueが返ってくる）を確認する
  def test_harajuku_to_shibuya
    ticket = Ticket.new(150)
    @harajuku.enter(ticket)
    assert @shibuya.exit(ticket)
  end

  # 原宿 → 恵比寿の移動が出来ない事（falseが返ってくる）を確認する
  def test_harajuku_to_ebisu_when_fare_is_not_enough
    ticket = Ticket.new(150)
    @harajuku.enter(ticket)
    refute @ebisu.exit(ticket)
  end

  # 原宿 → 恵比寿の移動が出来る事（trueが返ってくる）を確認する
  def test_harajuku_to_ebisu_when_fare_is_enough
    ticket = Ticket.new(190)
    @harajuku.enter(ticket)
    assert @ebisu.exit(ticket)
  end
end
