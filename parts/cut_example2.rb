class CutExample2 < Part
  def initialize(opts={})
    @opts = {
      x: 10,
      y: 10,
      z: 5,
    }.merge(opts)
  end

  def part
    # WIP
    cube(@opts).color(:teal)
  end
end
