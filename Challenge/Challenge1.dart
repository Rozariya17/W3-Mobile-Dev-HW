class Point {
  int x = 0;
  int y = 0;

  Point({required this.x, required this.y});

  String toString() {
    return "$x $y";
  }

  void translate(int deltaX, int deltaY) {
    x += deltaX;
    y += deltaY;
  }
}

void main() {
  Point p1 = Point(x: 10, y: 20);
  print(p1);
  p1.translate(2, 3);
  print(p1);
}
