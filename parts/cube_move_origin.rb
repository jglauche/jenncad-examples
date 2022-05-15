class CubeMoveOrigin < Part
  def initialize(opts={})
    @x = 42
    @y = 23
    @z = 2
    @d = 3
    @cyl_dist = 5

    # let's initialize an anchor to this class
    set_anchor :meow, x: 100, y: 0
  end

  def part
    base = cube(x: @x, y: @y, z: @z).nc.color("HotPink")
    res = base
    # you can specify an object that holds the anchor. If omitted, both current object and parent object are checked
    res -= cylinder(d: @d).movea(:top, base).move(x: @cyl_dist, y: -@cyl_dist).color("gold")

    res += cube(x: @x/2.0, y: @y, z: @z).nc.movea(:top, base).color("blue")

    # we left the origin object out in this example, so it's moved by its own length. Try changing the x in this example
    res += cube(x: @x, y: @y, z: @z).nc.movea(:right).color("purple")

    # This is an example of using the "parent" object, which is this class ("self").
    res += cube(x: @x, y: @y, z: @z).nc.movea(:meow).color("MediumVioletRed")


    # Cubes also come with built-in corner anchors
    #   bottom_left
    #   bottom_right
    #   top_left
    #   top_right
    #
    # Let's start with a centered cube in this example
    base2 = cube(x: @x, y: @y, z: @z).color("DarkOrchid")
    # Note that we need to define a variable that just has the cube
    # before we make it into a boolean object
    corner_example = base2
    corner_example += cylinder(d:10).movea(:bottom_left, base2).color("DarkRed")
    corner_example += cylinder(d:10).movea(:top_right, base2).color("Red")
    corner_example += cylinder(d:10).movea(:bottom_right, base2).color("hotpink")
    corner_example += cylinder(d:10).movea(:top_left, base2).color("mediumvioletred")
    # corner_example is in the center position, so let's do an inverted move to the top right anchor [and move it by -@z]
    res += corner_example.moveai(:top_right, base2).move(z: -@z)

    res
  end
end
