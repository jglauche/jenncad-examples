class Anchor < Part
  def initialize(opts={})
    @x = 42
    @y = 23.3
    @z = 5
    @d = 3
    # set_anchor or sa for short
    sa(:top_right, xy: 5)
    sa(:bottom_left, xy: -5)


  end

  def part
    res = cube(x: @x, y: @y, z: @z)

    # Note: no need to specify a height for most objects on subtraction, it will automatically be cut with a tiny bit bigger option to eliminate Z fighting in the preview

    res -= cylinder(d: @d).movea(:top_right)
    res -= cylinder(d: @d).movea(:bottom_left)

    # you can use moveai to do an inverted move to the anchor, i.e. if you want to center your part to that anchor
    res = res.moveai(:top_right)


    res
  end
end
