class Anchor2 < Part
  def initialize(opts={})
    @x = 42
    @y = 23.3
    @z = 5

    # you can specifiy other parts to include here
    @testmod = TestModule.new
  end

  def part
    base = cube(x: @x, y: @y, z: @z).color("darkblue")
    res = base.nc
    # start at the center point at the right corner
    res += @testmod.movea(:right, base)

    # note that testmod already is at position :right of achor base here, we don't need to repeat this.
    res += @testmod.movea(:bottom_right, @testmod).color("OrangeRed")

    res += @testmod.movea(:top_right, @testmod).color("red")

    res
  end
end
