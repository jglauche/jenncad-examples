class TestModule < Part
  def initialize(opts={})
    @x = 60
    @y = 20
    @z = 5
    @d = 10
    #inner anchors is a great way to define bolt locations
    @base = cube(x: @x, y: @y, z: @z).nc.inner_anchors(5)

    # copy_anchors (shortcut cpa) copies the anchors to this object.
    # Here, we want @base anchors to be accessible via TestModule (for example anchor3)
    cpa @base
    # NOTE: currently, this does not copy _sides, _corners or _all methods that inner_anchors create

    # Note that those are not symmetric:
    set_anchor :hole1, {x: 23, y: 10}
    set_anchor :hole2, {x: 42, y: 10}

    # if you don't have individual colors you want to show off in one part, you can define the color here
    color("lightblue")
  end

  # NOTE: We want to expose the inner corners and copy_anchors doesn't copy it as of alpha20; see note above
  def inner_corners
    @base.inner_corners
  end

  def part
    res = @base.fix
    res -= cylinder(d: @d).movea(:hole1)
    res -= cylinder(d: @d).movea(:hole2)

    # TODO: Jenncad comes with a hardware library, but it's currently WIP
    @base.inner_corners.each do |a|
      res -= cylinder(d: 3).movea(a, @base)
    end

    res
  end
end
