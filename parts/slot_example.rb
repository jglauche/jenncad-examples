class SlotExample < Part
  def initialize(opts={})
    @x = 15
    @y = 30
    @z = 10
    @d = 10

    sa :example1, x: -100
    sa :example2, x: -50
    sa :example3, x: 0
    sa :example4, x: 20
    sa :example5, x: 40
    sa :example6, x: 60
  end

  def part
    # Slot is a hull between two circles, first example is left in red
    res = slot(d: @d, x: @y).movea(:example1).color(:red)

     # if you pass a z argument, it gets extruded
    res += slot(d: @d, x: @y, z: @z).movea(:example2).color(:orange)


    # you can also move it in y
    res += slot(d: @d, y: @y, z: @z).movea(:example3).color(:gold)

    # or in -negative directions
    res += slot(d: @d, y: -@y, z: @z).movea(:example4).color(:blue)

    # it can also move in both x and y directions
    res += slot(d: @d, x: @x, y: -@y, z: @z).movea(:example5).color(:purple)

    # it can also move in both x and y directions
    res += slot(d: @d, xy: @y, z: @z).movea(:example6).color(:green)

    res
  end
end
