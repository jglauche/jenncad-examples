class MultiplesOfExample < Part
  def initialize(opts={})
    @distance = 1
    @battery = CoinBattery.new(opts)

    # we can define new anchors from an existing one (top_face is an automatic one)
    @battery.set_anchor_from(:top_face, :top_with_spacing, z: @distance)
  end

  def part

    # by default, N.of will move things to anchor :top_face
    res = 10.of(@battery)

    # this also works for primitives. Note that you should create a part and redefine your anchors when needed for complex parts
    res += 10.of(cube(x: 10, y: 10, z: 10).set_anchor_from(:top_face, :top_with_spacing, z: @distance), :top_with_spacing).color("teal")

    # note that we're starting at 10x height now as we re-used it. Let's try this with the spacing we defined earlier
    res += 10.of(@battery, :top_with_spacing).color(:orange) # note that the bottom one is on the same height as the "solid" stack we made earlier

    res
  end
end
