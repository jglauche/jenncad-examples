class SqareExample < Part
  def initialize(opts={})
    @x = 40
    @y = 40
    @inner = 20
    @h = 5
  end

  def part
    base = square(x: @x, y: @y).color(:red)
    res = base.fix
    # rcube is now working in both 2D and 3D subsystems, if you don't pass z, it'll use 2D
    res -= rcube(xy: @inner).flat(:top, :left)

    # sq can be used as shortcut for square and it has the same 2D anchors as cube
    # centering axis work the same, you can use .nc to use OpenSCAD default centering at bottom_left = 0,0
    res += sq(x: @x, y: @y).nc.movea(:top_right, base).color(:purple)

    # Note that extrude gets rid of all color used in your 2D parts.
    # Extrude makes a new 3D part out of the 2D parts in OpenSCAD
    #
    # If you remove the extrude, you'll see the 2d parts in color
    res.extrude(z: @h).color(:navy)
    # Note if you really must preserve the color of your indiviual parts, consider extruding them separately
  end
end
