abstract class Shape {
  double area();
}

class Rectangle extends Shape {
  final double width, height;
  Rectangle(this.width, this.height);

  @override
  double area() => width * height;
}

class Circle extends Shape {
  final double radius;
  Circle(this.radius);

  @override
  double area() => 3.14 * radius * radius;
}

class BrokenShape extends Shape {
  @override
  double area() => throw Exception("لا يوجد مساحة لهذا الشكل!"); // ❌ كسر المبدأ
}
