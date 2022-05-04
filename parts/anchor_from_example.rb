class AnchorFromExample < Part
  def initialize(opts={})
    @d = 10
    @spacing = 1
    @obj = cylinder(d: @d, h: 5)
  end

  def part
    # this example will use the shortcut versions of:
    #   saf => set_anchor_from
    #   ma => movea

    grid_x = @obj.fix.color("blue")

    # Say you want to make a row of cylinders in this example, let's create a new position :right_pos,
    #   starting from the right edge of the cylinder. Since the cylinder is starting at center by default, we need to add the radius (@d / 2.0) to it
    #   and then we also add spacing
    @obj.saf :right, :right_pos, x: @d/2.0 + @spacing

    # you can cain this and @obj will move "1 hop" each time you add it.
    grid_x += @obj.ma(:right_pos).color(:navy)
    grid_x += @obj.ma(:right_pos).color(:navy)

    # Now, say you want to apply this to king of transformation to grid_x
    # Currently grid_x is a boolean_object which does not have any of the anchors your primitives come with
    #
    # With the :from object, we can tell it to take the anchor point from @obj and apply it to the grid_x object
    grid_x.saf :top, :top_pos, y: @d/2.0 + @spacing, from: @obj

    # JennCad has a convenient function N.of that gives you multiples of one object stacked against the anchor point, here it's :top_pos
    grid_y = 3.of grid_x, :top_pos

    res = grid_y
    res
  end
end
