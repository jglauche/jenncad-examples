class FlipTestCyl < Part
  def initialize(opts={})
    @d = 42
    @d_hole = 5
    @x = 100
    @z = 23
    color :pink
  end

  def base
    res = cy(d: @d, z: @z)
    res -= cy(d: @d_hole).move(xyq: @d)
  end

  def part
    res = base.flip(:right)

    res.at(yh: @x) do
      res += base.flip(:left)
    end

    res.at(y: @x) do
      res += base.flip(:front)
    end

    res.at(y: @x, yh: @x) do
      res += base.flip(:back)
    end

    res.at(yd: @x) do
      res += base.flip(:top)
    end

    res.at(yd: @x, yh: @x) do
      res += base.flip(:bottom)
    end

    res
  end

end
