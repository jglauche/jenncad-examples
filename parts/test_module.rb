class TestModule < Part
  def initialize(opts={})
    @x = 60
    @y = 20
    @z = 5

    #inner anchors is a great way to define bolt locations
    @base = cube(x: @x, y: @y, z: @z).nc.inner_anchors(5)

    # Note that those are not symmetric:
    set_anchor :hole1, {x: 23, y: 10}
    set_anchor :hole2, {x: 42, y: 10}


    # if you don't have individual colors you want to show off in one part, you can define the color here
    color("lightblue")
  end

  def part
    res = @base.fix
    res -= cylinder(d: 10).movea(:hole1)
    res -= cylinder(d: 10).movea(:hole2)

    # TODO: Jenncad comes with a hardware library, but it's currently WIP
    @base.inner_corners.each do |a|
      res -= cylinder(d: 3).movea(a, @base)
    end

    res
  end
end
