class MoveChain < Part
  def initialize(opts={})
    @x = 10
    @y = 20
    @z = 4
    if $jenncad_profile.chain_moves
      $log.error "MoveChain example does not work correctly when chain_moves is set to true in your profile"
    end
  end

  def part
    # Before 1.0.0.alpha14, the default behaviour was to chain moves
    # now, this example will result in one
    #   translate([20, 0, 0])[...]
    res = cube(x: @x, y: @y, z: @z).nc.move(x: 10).move(x:10).color("red")

    # You can specify chain: true to a move to chain it.
    # Soemtimes this might be useful for debugging the output
    res += cube(x: @x, y: @y, z: @z).nc.move(y: 10).move(y: 10, chain: true).color("orangered")

    # also works for chain: false
    res += cube(x: @x, y: @y, z: @z).nc.move(xy: 20).move(y: 10, chain: false).color("orange")

    # Also works on inverted moves
    res += cube(x: @x, y: @y, z: @z).nc.movei(xy: 20).movei(y: 10, chain: true).color("yellow")

    res += cube(x: @x, y: @y, z: @z).nc.moveai(:top_left).movei(y: 10, chain: true).color("blue")

#    res += cube(x: @x, y: @y, z: @z).nc.move(y: -50).movea(:top_left, chain: true).color("navi")




    res
  end
end
