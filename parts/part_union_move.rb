class PartUnionMove < Part
  def initialize(opts={})
    @battery = CoinBattery.new(opts)
    @battery2 = CoinBattery.new(opts)
    @spacing = 1
  end

  def part
    # When you do this, the object @battery gets assigned to res
    e1  = @battery
    # Say you want to move another battery on top of it, it results in both @battery to be moved up
    e1 += @battery.move(z: @battery.h + @spacing)
    # this now appears to work nominal
    e1 += @battery.move(z: @battery.h + @spacing)

    # So what happend:
    #   e1 = @battery
    # => e1 was assigned to @battery
    #
    #   e1 += @battery.move(z: @battery.h + @spacing)
    # => 1. @battery gets a move of z: @battery.h + @spacing
    #    Meanwhile e1 and @battery are the same object
    #
    #    2. e1 += creates a union object from e1 (copy of) and @battery (copy of)
    #
    # While ruby allows us to overwrite a lot of operators (+ is an example that maps to UnionObject), we cannot overwrite the global = operator
    # since 1.0.0.alpha15, JennCad comes with a workaround:
    #
    # #fixate or #fix for short. Example:
    e2 = @battery2.fix
    # You only need to use fixate when you assign an initialized object that you are going to reuse to a variable
    # It is not needed for any primitive (this creats a new instance of that primitive)
    # It is also not needed for subsequent boolean operations

    # So what happens:
    #   e2 = @battery2.fix
    # => e2 is assigned to a marshal clone of @battery, @e2 is not the same object as @battery2 at this point

    # the rest works like you would expect:
    e2 += @battery2.move(z: @battery.h + @spacing) # @battery2 gets moved and then unioned with e2
    e2 += @battery2.move(z: @battery.h + @spacing) # same here, you're still working on @battery2 to edit its properties but e2 automatically makes a clone of


    # move e1 to the left side and paint it red
    # mvoe e2 to the right side and paint it blue
    res = e1.moveai(:right, @battery).color("red")
    res += e2.moveai(:left, @battery).color("blue")
    res
  end
end
