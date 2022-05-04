class MultiplesOfExampleSlots < Part
  def initialize(opts={})
    @distance = 1
    # Note that we alos can use xy shortcuts for slot
    @obj = slot(d: 10, h: 5, xy: 10)

    # we can define new anchors from an existing one (:right is an automatic one)
    @obj.set_anchor_from(:right, :right_with_spacing, x: @distance)
    @cubes_n = 8
  end

  def part
    # Previous of 1.0.0.alpha16, this would have not worked with slots
    res = 4.of(@obj, :right_with_spacing)

    res.color(:teal)
  end

end
