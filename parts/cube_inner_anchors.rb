class CubeInnerAnchors < Part
  def initialize(opts={})
    @x = 40
    @y = 40
    @z = 10
    @fc = 5 # distance from corner
    @fc2 = 10
    @fc3 = 15
    @d = 3 # hole dia
    @d2 = 2
  end

  # If you have an object to rebuild, it is recommended to make it a method
  # in Ruby you can just make local variable into a method like this
  def base
    # inner_anchors creates anchors of each outer anchor with a distance you specify in the first parameter
    cube(x: @x, y: @y, z: @z).inner_anchors(@fc)
  end

  # Let's create a method to handle the centering so we don't have to repeat applying .cx to the base at move, for layer 2
  def l2base
    base.cx
  end


  def base_adv
    # let's call the second set of anchors alpha. Note: You should add a _ at the end
    cube(x: @x, y: @y, z: @z).inner_anchors(@fc).inner_anchors(@fc2, :alpha_)
  end

  # we can also build upon previous methods, as long as it doesn't perform a boolean operation
  def base_adv2
    base_adv.inner_anchors(@fc3, :bravo_)
  end

  def l5base
    base_adv2.cy
  end




  def part
    layer1 = base.color("hotpink")
    # inner_anchors prefixes all of the normal sides with inner_
    layer1 -= cylinder(d: @d).movea(:inner_bottom, base)

    layer2 = l2base.color("steelblue")
    # We can iterate through all the corner names by special names
    #   inner_corners
    #   inner_sides
    #   inner_all
    base.inner_corners.each do |corner|
      layer2 -= cylinder(d: @d).movea(corner, l2base)
    end
    base.inner_sides.each do |corner|
      layer2 -= cylinder(d: @d2).movea(corner, l2base)
    end


    layer3 = base.nc.color("pink")
    base.inner_corners.each do |corner|
      layer3 -= cylinder(d: @d).movea(corner, base.nc)
    end

    layer4 = base_adv.nc.color("purple")
    base_adv.inner_corners.each do |corner|
      layer4 -= cylinder(d: @d).movea(corner, base_adv.nc)
    end
    base_adv.alpha_all.each do |corner|
      layer4 -= cylinder(d: @d2).movea(corner, base_adv.nc)
    end

    layer5 = l5base.color("lightblue")
    base_adv2.inner_corners.each do |corner|
      layer5 -= cylinder(d: @d).movea(corner, l5base)
    end
    base_adv2.alpha_corners.each do |corner|
      layer5 -= cylinder(d: @d2).movea(corner, l5base)
    end
    base_adv2.bravo_sides.each do |corner|
      layer5 -= cylinder(d: @d2).movea(corner, l5base)
    end



    # Note: top_of is a early-ish anchor like functionality for Z heights, useful for eample if you break your part into layers, i.e. to make them print nicer/easier
    res = layer1 +
          layer2.top_of(layer1) +
          layer3.top_of(layer2) +
          layer4.top_of(layer3) +
          layer5.top_of(layer4) +
    res
  end
end
