class SqareExample < Part
  def initialize(opts={})
    @x = 40
    @y = 40
    @inner = 20
    @h = 5
  end

  def part
    base = square(x: @x, y: @y)
    res = base.fix
    res -= rcube(xy: @inner).flat(:top, :left)
    res.extrude(z: @h).color(:navy)
  end
end
