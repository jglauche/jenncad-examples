class OpenscadModifiers < Part
  def initialize(opts={})
    @x = 10
    @y = 20
    @z = 5
  end

  def base
    cube(x: @x, y: @y, z: @z).color("purple")
  end

  def part
    res = base
    # OpenScad debug highlight "#". Note that passing debug to it will provide debug information but has no effect on the openscad output
    res += base.move(x: @x).hl

    # OpenScad "Background Modifier", Jenncad calls it "ghost" as it has no effect on stl rendering
    res += base.move(x: @x*2).ghost

    # OpenScad "disable". Will be exported to openscad, but not be displayed nor rendered to STL
    res += base.move(x: @x*3).hide

    # OpenScad "root" modifier, jenncad calls it "only"
    # NOTE: The part will be moved to OpenScad's center. If you leave out this keyword, the cube is centered in x and y.
    #       Those transformations do not apply to only. Use with caution, this may be confusing
    res += base.move(x: @x*4).only

  end
end
