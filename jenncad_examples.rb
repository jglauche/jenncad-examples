#!/usr/bin/env ruby
require "jenncad"
include JennCad

class JenncadExamples < Project
  def config
    {}
  end


  def cube_example
    CubeExample.new(config)
  end

  def rcube
    Rcube.new(config)
  end

  def rcube_flat_edge
    RcubeFlatEdge.new(config)
  end

  def anchor
    Anchor.new(config)
  end

  def hull_example
    HullExample.new(config)
  end

  def cube_move_origin
    CubeMoveOrigin.new(config)
  end
  # jenncad-append-project-magic
end

JenncadExamples.new.run
