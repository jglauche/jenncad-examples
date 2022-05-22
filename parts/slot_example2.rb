class SlotExample2 < Part
  def initialize(opts={})
    @y = 30
    @d1 = 10
    @d2 = 20
  end

  def part
    # Slot comes with d1 and d2 settings as cylinder does, but by default (starting with alpha 21), it does something different:
    # this creates a hull around 2 cylinders, from d1 to d2
    # see SlotExample3 for the other mode
    res = slot(d1: @d1, d2: @d2, y: @y).color(:red)

    res
  end
end
