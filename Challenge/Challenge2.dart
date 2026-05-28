class Point {
  int x;
  int y;

  Point({required this.x, required this.y});
}

class Rectangle {
  Point topLeft;
  Point bottomRight;

  Rectangle(this.topLeft, this.bottomRight);

  int get width => bottomRight.x - topLeft.x;
  int get height => topLeft.y - bottomRight.y;
  int get area => width * height;
}

void main() {
  Point p1 = Point(x: 3, y: 4);
  Point p2 = Point(x: 5, y: 1);

  Rectangle r = Rectangle(p1, p2);

  print("Width: ${r.width}");
  print("Height: ${r.height}");
  print("Area: ${r.area}");
}
