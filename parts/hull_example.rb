class HullExample < Part
  def initialize(opts={})
    @d = 5
    @h = 10

  end

  def part
    res = hull(
      cylinder(d: @d, h: @h),
      cylinder(d: @d, h: @h).move(x: 10)
    ).moveh(xy: @d)
    res
  end
end
