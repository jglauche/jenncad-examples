class HullExample < Part
  def initialize(opts={})
    @d = 10
    @d2 = 5
    @h = 10
  end

  def part
    # This is basically how the OpenSCAD hull works.
    res = hull(
      cylinder(d: @d, h: @h),
      cylinder(d: @d2, h: @h).move(xy: 10)
    ).moveh(xy: @d).color("SteelBlue")


    # You can also use the & shortcut to hull objects.
    hull2 = cylinder(d: @d, h: @h) & cylinder(d: @d2, h: @h).move(xy: -10)
    res += hull2.moveh(xy: -@d).color("MediumVioletRed")

    # this also works with &=
    hull3 = cylinder(d: @d, h: @h)
    hull3 &= cylinder(d: @d2, h: @h).move(x: -10, y: 10)
    res += hull3.moveh(x: -@d, y: @d).color("DarkOrchid")

    # also works with more than 2 items
    hull4 = cylinder(d: @d2, h: @h)
    # and you only need to define the height once, if they are the same
    hull4 &= cylinder(d: @d).move(x: 10, y: -20)
    hull4 &= cylinder(d: @d).move(x: 15, y: -15)

    res += hull4.moveh(x: @d, y: -@d).color("lightsteelblue")



    res
  end
end
