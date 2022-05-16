class ExtrudeExample < Part
  def initialize(opts={})
    @x = 60
    @y = 60
    @z = 5

    @d = 10
  end

  # when you mix 2d and 3d operations, it might be a good idea to separate them to different methods
  def middle
    res = circle(d: @d)
    res += circle(d: @d).move(xy: @d)
    res += circle(d: @d).move(xy: -@d)
    res
  end

  def part
    base = cube(x: @x, y: @y, z: @z)
    res = base.fix
    # NOTE: it's likely that an auto extrusion will be implemented for boolean operations that mix 2d and 3d parts
    # for now, use extrude for a linear extrude
    res -= middle.extrude(h: @z)
    res
  end
end
