class Anchor2 < Part
  def initialize(opts={})
    @x = 42
    @y = 23.3
    @z = 5

    # you can specifiy other parts to include here
    @anch = TestModule.new
  end

  def part
    base = cube(x: @x, y: @y, z: @z).color("darkblue")
    res = base.nc

    # start at the center point at the right corner
    res += @anch.movea(:right, base)

    # note that anch already is at position :right of achor base here, we don't need to repeat this.
    res += @anch.movea(:bottom_right, @anch).color("OrangeRed")

    res += @anch.movea(:top_right, @anch).color("red")

    res
  end
end
