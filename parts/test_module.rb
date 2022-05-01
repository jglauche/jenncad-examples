class TestModule < Part
  def initialize(opts={})
    @x = 60
    @y = 20
    @z = 5

    # if you don't have individual colors you want to show off in one part, you can define the color here
    color("lightblue")
  end

  def part
    cube(x: @x, y: @y, z: @z).nc
  end
end
