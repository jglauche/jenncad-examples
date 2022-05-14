class CutExample < Part
  def initialize(opts={})
    @x = 100
    @y = 100
    @z = 20
    @wall = 1
    @battery = CoinBattery.new(opts)
  end

  def part
    base = cube(x: @x, y: @y, z: @z).inner_anchors(@battery.d/2.0 + @wall)

    res = base.fix
    # This is the "normal" subtraction for comparision; let's move it to bottom right
    res -= @battery.movea(:inner_bottom_left, base)
    # rstlm resets the last move, so we start at the center again
    res -= @battery.rstlm.movea(:inner_bottom_right, base)



#    @battery.set_flag(:debug)
    b = @battery.rstlm.cut_to(:top_face, base)

    #b.set_flag(:no_cache)

    puts b.option(:margins)
    res -=b

    # NOTE: I want to have a feature that you can set cut faces to an object, i.e. a grid to a fan and have it cut to a specific length in any direction

    res
  end
end
