class Rcube < Part
  def initialize(opts={})
    @x = 40
    @y = 20
    @z = 5
    @d = 10
  end

  def part
    # rcube behaves like a cube
    res = rcube(x: @x, y: @y, z: @z).color("yellow")

    # .nc for not centered, starts at xy 0,0 to positive x and y
    res += rcube(x: @x, y: @y, z: @z).nc.move(z: @z).color("orange")

    # centering one axis will imply .nc
    res += rcube(x: @x, y: @y, z: @z).cx.move(z: @z*2).color("red")

    res += rcube(x: @x, y: @y, z: @z).cy.move(z: @z*3).color("pink")

    res += rcube(x: @x, y: @y, z: @z).cz.move(z: @z*4).color("purple")

    # you can specify different corner outer diameters
    # (default = 5)
    res += rcube(x: @x, y: @y, z: @z, d: @d).cz.move(z: @z*5).color("blue")

    res
  end
end
