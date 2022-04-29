class CubeMoveOrigin < Part
  def initialize(opts={})
    @x = 42
    @y = 23
    @z = 2
    @d = 3
    @cyl_dist = 5

    # let's initialize an anchor to this class
    set_anchor :meow, x: 30, y: 30
  end

  def part
    base = cube(x: @x, y: @y, z: @z).nc
    res = base
    # you can specify an object that holds the anchor. If omitted, both current object and parent object are checked
    res -= cylinder(d: @d).movea(:top, base).move(x: @cyl_dist, y: -@cyl_dist)

    res += cube(x: @x/2.0, y: @y, z: @z).nc.movea(:top, base).color("blue")

    # we left the origin object out in this example, so it's moved by its own length. Try changing the x in this example
    res += cube(x: @x, y: @y, z: @z).nc.movea(:right).color("purple")

    # This is an example of using the "parent" object, which is this class ("self").
    res += cube(x: @x, y: @y, z: @z).nc.movea(:meow).color("MediumVioletRed")


    res
  end
end
