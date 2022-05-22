class Anchor3 < Part
  def initialize(opts={})
    # In this example, modify a part using anchors

    @testmodule = TestModule.new
    @x = 15
    @z = @testmodule.z + 10
    @dh = 5.5
    @dz = 2
  end

  def part
    res = @testmodule
    # Let's work at certain locations on this part. We have 2 big holes (anchors :hole1 and hole2)
    # .at will move the part via inverted move to the given anchor and then you define a block with "do"
    # the block will be executed at this position. At the end of the block, the initial move will be reverted and you're back at origin
    res.at(:hole1) do
      res += cube(x: @x, y: @testmodule.y, z: @z).color(:navy)
      res -= cylinder(d: @testmodule.d)
      # Sometimes you want to see what you're doing at this position. One options is to return the part at this point inside this block:
      # return res
    end
    # Now, the part is back at its origin

    # let's do this for hole2 as well
    res.at(:hole2) do
      res += rcube(x: @x, y: @testmodule.y, z: @z).color(:purple)
      res -= cylinder(d: @testmodule.d)
    end

    # you can also manually define coordinates
    res.at(x: @testmodule.x, y: 2) do
      # let's add a bit of material to the part here:
      res += cube(x: @x, y: @testmodule.y - 2, z: @testmodule.z).nc.color(:gold)
    end


    # you can chain .at operations; i.e. you work on a different Z here
    # let's try to make some hex slots for nut inserts
    res.at(z: @dz) do
      # You can use .at to do one operation for an array of positions:
      # inner_corners in TestModule provides an array of anchors.
      res.at(@testmodule.inner_corners) do
        res -= cylinder(d: @dh, fn: 6)
      end
    end

    res
  end
end
