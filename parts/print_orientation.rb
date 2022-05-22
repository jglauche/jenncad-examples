class PrintOrientation < Part
  def initialize(opts={})
    @d = 52
    @d2 = 10
    @z = 70
    @z2 = @z + 16

    color :gold
  end

  # Sometimes you have have part that you would like to use elsewhere that need to be printed in a different direction (i.e. to avoid supports).
  def part
    res = cylinder(d: @d, z: @z).mh(z: @z2-@z)
    res += cylinder(d: @d2, z: @z2)
    res -= sq(xy: @d).cx.auto_extrude
    res
  end

  # You can add a method named print to set the print orientation.
  # this creates an additional file with the suffix _print, so this file exports both:
  #
  # print_orientation.scad
  # print_orientation_print.scad
  #
  # Note that currently this means that this part is being called twice (may be changed in the future); debug information from this file will be called twice
  def print
    rotate(x:-90) # Note: this is applied to the output of self.part. Do not call #part in here
  end
end
