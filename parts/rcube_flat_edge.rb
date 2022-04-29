class RcubeFlatEdge < Part
  def initialize(opts={})
    @x = 40
    @y = 20
    @z = 5
  end

  def part
    # flat edges
    res = rcube(x: @x, y: @y, z: @z).flat(:up).color("yellow")
    res += rcube(x: @x, y: @y, z: @z).flat(:down).color("orange").move(z: @z)
    res += rcube(x: @x, y: @y, z: @z).flat(:left).color("red").move(z: @z*2)
    res += rcube(x: @x, y: @y, z: @z).flat(:right).color("pink").move(z: @z*3)

    # flat edges can be chained
    res += rcube(x: @x, y: @y, z: @z).flat(:left).flat(:down).color("purple").move(z: @z*4)

    # non-centering axis example
    res += rcube(x: @x, y: @y, z: @z).flat(:left).flat(:down).cy.color("blue").move(z: @z*5)


    res
  end

end
