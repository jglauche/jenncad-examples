class SlotExample3 < Part
  def initialize(opts={})
    @y = 30
    @d1 = 30
    @d2 = 15
    @z = 5
  end

  def part
    # this was a change since alpha 21 (see SlotExample2)
    # add mode :cyl to change it to the mode where slot creates two cylinders with the same d1+d2 parameters
    # Be aware, that using the :cyl mode will require you to have define z, unlike the other modes
    res = slot(d1: @d1, d2: @d2, y: @y, z: @z, mode: :cyl).color(:pink)

    res
  end
end
