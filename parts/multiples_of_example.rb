class MultiplesOfExample < Part
  def initialize(opts={})
    @distance = 1
    @battery = CoinBattery.new(opts)

    # we can define new anchors from an existing one (top_face is an automatic one)
    @battery.set_anchor_from(:top_face, :top_with_spacing, z: @distance)
    @cubes_n = 8
  end

  def part

    # by default, N.of will move things to anchor :top_face
    res = 10.of(@battery)

    # note that we're starting at 10x height now as we re-used it. Let's try this with the spacing we defined earlier
    res += 10.of(@battery, :top_with_spacing).color(:orange) # note that the bottom one is on the same height as the "solid" stack we made earlier

    # this also works for primitives. Note that you should create a part and redefine your anchors when needed for complex parts
    # also, you can use this on any integer variable
    res += @cubes_n.of(cube(x: 10, y: 10, z: 10).set_anchor_from(:top_face, :top_with_spacing, z: @distance), :top_with_spacing).color("teal")

    res
  end
end
