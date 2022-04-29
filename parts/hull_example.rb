class HullExample < Part
  def initialize(opts={})
    @d = 10
    @d2 = 5
    @h = 10
  end

  def part
    # This is basically how the OpenSCAD hull works.
    res = hull(
      cylinder(d: @d, h: @h),
      cylinder(d: @d2, h: @h).move(xy: 10)
    ).moveh(xy: @d)

    res.color("SteelBlue")
  end
end
