class Anchor < Part
  def initialize(opts={})
    @x = 42
    @y = 23.3
    @z = 5
    @d = 3
    # set_anchor or sa for short
    sa(:hole1, xy: 5)
    sa(:hole2, xy: -5)


  end

  def part
    base = cube(x: @x, y: @y, z: @z)
    res = base

    # Note: no need to specify a height for most objects on subtraction, it will automatically be cut with a tiny bit bigger option to eliminate Z fighting in the preview
    res -= cylinder(d: @d).movea(:hole1)
    res -= cylinder(d: @d).movea(:hole2)
    # you can use moveai to do an inverted move to the anchor, i.e. if you want to center your part to that anchor
    res.moveai(:hole1)
    # You can modify the part by moving the center like this example ...
    res -= cylinder(d1: @d, d2: @d+3)

    # ... but you want to move back to the center position because anchors are not automatically chained
    res.movea(:hole1)
     # most of the time, it's easier to work at the anchor point directly
    res -= cylinder(d1: @d, d2: @d*2).movea(:hole2)

    # and sometimes you want to move the whole part to a project specific standard, i.e. 0,0
    # note that this one is referenced to and antogenerated at our base cube.
    res = res.moveai(:bottom_left, base)

    res.color("SteelBlue")
  end
end
