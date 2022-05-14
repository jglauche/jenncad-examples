class PolyhedronExample < Part
  def initialize(opts={})
    @x = 50
    @y = 20
    @z = 10
    @spacing = 10
  end

  def part
    # based on cube as a polyhedron example, followed by https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Primitive_Solids#polyhedron
    p = [
      [0, 0, 0], # 0
      [@x, 0, 0], # 1
      [@x, @y, 0], # 2
      [0, @y, 0], # 3
      [0, 0, @z], # 4
      [@x, 0, @z], # 5
      [@x, @y, @z], # 6
      [0, @y, @z], # 7
    ]
    f = [
      [0,1,2,3], # bottom
      [4,5,1,0], # front
      [7,6,5,4], # top
      [5,6,2,1], # right
      [6,7,3,2], # back
      [7,4,0,3], # left
    ]
    # Make the polyhedron
    ph = polyhedron(points: p, faces: f)
    # JennCad now allows to get individual faces of a polyhedron
    sides = ph.face(0).color("yellow")
    sides += ph.face(1).color("orange")
    sides += ph.face(2).color("red")
    sides += ph.face(3).color("blue")
    sides += ph.face(4).color("purple")
    sides += ph.face(5).color("black")
    # Note that the side "cube" is essentially a construct out of a thin walls and it's hollow inside.

    # let's assemble the polyhedron cube and the hollow cube
    res = ph.color("silver")
    res += sides.move(x: @x + @spacing)
    res
  end
end
