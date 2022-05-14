class Fan < Part
  def initialize(opts={})
    @xy = opts[:xy] || 25
    @z = opts[:z] || 10
    @hub_dia = opts[:hub_dia] || 15.7
    @wall = 1.5

    @hole_distance = 2.7
    @hole_dia = 2.6

    @base = cube(xy: @xy, z: @z).inner_anchors(@hole_distance)

    hw(:hole, size: :m2, anchors: @base.inner_corners, from: @base)

    color :black
  end

  def part
    res = @base.fix
    res = cube(xy: @xy, z: @z)
    res -= cylinder(d: @xy - @wall)
    res += cylinder(d: @hub_dia)

    hw.each do |key, val|
      res -= cylinder(d: @hole_dia).move(val[:pos])
    end

    res
  end
end
