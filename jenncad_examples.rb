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

  def rcube_move_origin
    RcubeMoveOrigin.new(config)
  end

  def cube_inner_anchors
    CubeInnerAnchors.new(config)
  end

  def openscad_modifiers
    OpenscadModifiers.new(config)
  end

  def anchor2
    Anchor2.new(config)
  end

  def coin_battery
    CoinBattery.new(config)
  end

  def move_chain
    MoveChain.new(config)
  end

  def part_union_move
    PartUnionMove.new(config)
  end

  def multiples_of_example
    MultiplesOfExample.new(config)
  end

  def anchor_from_example
    AnchorFromExample.new(config)
  end

  def multiples_of_example_slots
    MultiplesOfExampleSlots.new(config)
  end

  def cut_example
    CutExample.new(config)
  end

  def fan
    Fan.new(config)
  end

  def cut_example2
    CutExample2.new(config)
  end

  def polyhedron_example
    PolyhedronExample.new(config)
  end

  def sqare_example
    SqareExample.new(config)
  end

  def extrude_example
    ExtrudeExample.new(config)
  end

  def anchor3
    Anchor3.new(config)
  end
  # jenncad-append-project-magic
end

JenncadExamples.new.run
