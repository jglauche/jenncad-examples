class CoinBattery < Part
  attr_accessor :d, :h
  def initialize(opts={})
    # default for cr2032
    @d = opts[:batt_d] || 30
    @h = opts[:batt_h] || 3.2
    color :silver
  end

  def part
    cylinder(d: @d, h: @h)
  end
end
