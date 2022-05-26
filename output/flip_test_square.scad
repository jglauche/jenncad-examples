module FlipTestSquare(){
  translate([0, 250, 0])union(){
      translate([0, -50, 0])union(){
          translate([0, -50, 0])union(){
              translate([0, -50, 0])union(){
                  translate([0, -50, 0])union(){
                      translate([0, -50, 50])rotate([0, 90, 0])translate([0, 0, -5])linear_extrude(height=10)difference(){
                                translate([-40, 0, 0])difference(){
                                    translate([40, 10, 0])difference(){
                                        translate([40, -20, 0])difference(){
                                            translate([-80, 0, 0])difference(){
                                                translate([80, 20, 0])difference(){
                                                    translate([-80, 0, 0])difference(){
                                                        translate([-10, -30, 0])square([100, 40]);
                                                        circle(d=5,$fn=64);
                                                      }

                                                    circle(d=5,$fn=64);
                                                  }

                                                circle(d=5,$fn=64);
                                              }

                                            circle(d=5,$fn=64);
                                          }

                                        circle(d=5,$fn=64);
                                      }

                                    circle(d=5,$fn=64);
                                  }

                                circle(d=5,$fn=64);
                              }

                      translate([0, 0, 50])rotate([0, 270, 0])translate([0, 0, -5])linear_extrude(height=10)difference(){
                                translate([-40, 0, 0])difference(){
                                    translate([40, 10, 0])difference(){
                                        translate([40, -20, 0])difference(){
                                            translate([-80, 0, 0])difference(){
                                                translate([80, 20, 0])difference(){
                                                    translate([-80, 0, 0])difference(){
                                                        translate([-10, -30, 0])square([100, 40]);
                                                        circle(d=5,$fn=64);
                                                      }

                                                    circle(d=5,$fn=64);
                                                  }

                                                circle(d=5,$fn=64);
                                              }

                                            circle(d=5,$fn=64);
                                          }

                                        circle(d=5,$fn=64);
                                      }

                                    circle(d=5,$fn=64);
                                  }

                                circle(d=5,$fn=64);
                              }

                    }

                  translate([0, 0, 20])rotate([90, 0, 0])translate([0, 0, -5])linear_extrude(height=10)difference(){
                            translate([-40, 0, 0])difference(){
                                translate([40, 10, 0])difference(){
                                    translate([40, -20, 0])difference(){
                                        translate([-80, 0, 0])difference(){
                                            translate([80, 20, 0])difference(){
                                                translate([-80, 0, 0])difference(){
                                                    translate([-10, -30, 0])square([100, 40]);
                                                    circle(d=5,$fn=64);
                                                  }

                                                circle(d=5,$fn=64);
                                              }

                                            circle(d=5,$fn=64);
                                          }

                                        circle(d=5,$fn=64);
                                      }

                                    circle(d=5,$fn=64);
                                  }

                                circle(d=5,$fn=64);
                              }

                            circle(d=5,$fn=64);
                          }

                }

              translate([0, 0, 20])rotate([270, 0, 0])translate([0, 0, -5])linear_extrude(height=10)difference(){
                        translate([-40, 0, 0])difference(){
                            translate([40, 10, 0])difference(){
                                translate([40, -20, 0])difference(){
                                    translate([-80, 0, 0])difference(){
                                        translate([80, 20, 0])difference(){
                                            translate([-80, 0, 0])difference(){
                                                translate([-10, -30, 0])square([100, 40]);
                                                circle(d=5,$fn=64);
                                              }

                                            circle(d=5,$fn=64);
                                          }

                                        circle(d=5,$fn=64);
                                      }

                                    circle(d=5,$fn=64);
                                  }

                                circle(d=5,$fn=64);
                              }

                            circle(d=5,$fn=64);
                          }

                        circle(d=5,$fn=64);
                      }

            }

          translate([0, 0, 5])rotate([180, 0, 0])translate([0, 0, -5])linear_extrude(height=10)difference(){
                    translate([-40, 0, 0])difference(){
                        translate([40, 10, 0])difference(){
                            translate([40, -20, 0])difference(){
                                translate([-80, 0, 0])difference(){
                                    translate([80, 20, 0])difference(){
                                        translate([-80, 0, 0])difference(){
                                            translate([-10, -30, 0])square([100, 40]);
                                            circle(d=5,$fn=64);
                                          }

                                        circle(d=5,$fn=64);
                                      }

                                    circle(d=5,$fn=64);
                                  }

                                circle(d=5,$fn=64);
                              }

                            circle(d=5,$fn=64);
                          }

                        circle(d=5,$fn=64);
                      }

                    circle(d=5,$fn=64);
                  }

        }

      linear_extrude(height=10)difference(){
          translate([-40, 0, 0])difference(){
              translate([40, 10, 0])difference(){
                  translate([40, -20, 0])difference(){
                      translate([-80, 0, 0])difference(){
                          translate([80, 20, 0])difference(){
                              translate([-80, 0, 0])difference(){
                                  translate([-10, -30, 0])square([100, 40]);
                                  circle(d=5,$fn=64);
                                }

                              circle(d=5,$fn=64);
                            }

                          circle(d=5,$fn=64);
                        }

                      circle(d=5,$fn=64);
                    }

                  circle(d=5,$fn=64);
                }

              circle(d=5,$fn=64);
            }

          circle(d=5,$fn=64);
        }

    }
}
$fn=64;
color("purple")FlipTestSquare();
