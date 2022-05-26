class FlipFeature < Part
  def initialize(opts={})
    @x = 100
    @y = 40
    @z = 10
    color :red
  end

  def part
    # NOTE: this is a ALPHA feature
    res = cube(x: @x, y: @y, z: @z)
    # so say we want to work on sides. When you just do a
    # res.rotate(x:90)
    # your part is no longer centered along X in this case (as base is not centered in Z)
    # for conveniene, jenncad comes with #flip that accepts the face of a cube
    res.flip(:right)

  end
end
