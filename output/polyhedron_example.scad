module PolyhedronExample(){
  union(){
    color("silver")polyhedron(points=[[0, 0, 0], [50, 0, 0], [50, 20, 0], [0, 20, 0], [0, 0, 10], [50, 0, 10], [50, 20, 10], [0, 20, 10]],faces=[[0, 1, 2, 3], [4, 5, 1, 0], [7, 6, 5, 4], [5, 6, 2, 1], [6, 7, 3, 2], [7, 4, 0, 3]],convexity=10);
    translate([60, 0, 0])union(){
        color("yellow")polyhedron(points=[[0, 0, 0], [50, 0, 0], [50, 20, 0], [0, 20, 0]],faces=[[0, 1, 2, 3], [3, 2, 1, 0]],convexity=10);
        color("orange")polyhedron(points=[[0, 0, 10], [50, 0, 10], [50, 0, 0], [0, 0, 0]],faces=[[0, 1, 2, 3], [3, 2, 1, 0]],convexity=10);
        color("red")polyhedron(points=[[0, 20, 10], [50, 20, 10], [50, 0, 10], [0, 0, 10]],faces=[[0, 1, 2, 3], [3, 2, 1, 0]],convexity=10);
        color("blue")polyhedron(points=[[50, 0, 10], [50, 20, 10], [50, 20, 0], [50, 0, 0]],faces=[[0, 1, 2, 3], [3, 2, 1, 0]],convexity=10);
        color("purple")polyhedron(points=[[50, 20, 10], [0, 20, 10], [0, 20, 0], [50, 20, 0]],faces=[[0, 1, 2, 3], [3, 2, 1, 0]],convexity=10);
        color("black")polyhedron(points=[[0, 20, 10], [0, 0, 10], [0, 0, 0], [0, 20, 0]],faces=[[0, 1, 2, 3], [3, 2, 1, 0]],convexity=10);
      }

  }
}
$fn=64;
PolyhedronExample();
