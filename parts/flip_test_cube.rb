class FlipTestCube < Part
  def initialize(opts={})
    @x = 100
    @y = 40
    @z = 10
    @d = 5
    color :green
  end

  def base
    b = cube(x: @x, y: @y, z: @z).inner_anchors(@y/4.0)
    b.at(b.inner_corners) do
      b -= cy(d: @d)
    end
    b.at(:inner_top) do
      b -= cy(d: @d)
    end
    b.at(:inner_left) do
      b -= cy(d: @d)
    end

    b-=cy(d: @d)
    b
  end

  def part
    res = base
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
