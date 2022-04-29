class CubeExample < Part
  def initialize(opts={})
    @x = 42
    @y = 23.3
    @z = 5
  end

  def part
    # Centered by default, like a cylinder
    res = cube(x: @x, y: @y, z: @z).color("yellow")

    # .nc for not centered, starts at xy 0,0 to positive x and y
    res += cube(x: @x, y: @y, z: @z).nc.move(z: @z).color("orange")

    # centering one axis will imply .nc
    res += cube(x: @x, y: @y, z: @z).cx.move(z: @z*2).color("red")

    res += cube(x: @x, y: @y, z: @z).cy.move(z: @z*3).color("pink")

    res += cube(x: @x, y: @y, z: @z).cz.move(z: @z*4).color("purple")



    res
  end
end
