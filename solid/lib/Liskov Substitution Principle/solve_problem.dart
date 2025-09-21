abstract class Shape {
  double? area(); // سمحنا أن القيمة تكون null
}

class Rectangle extends Shape {
  final double width, height;
  Rectangle(this.width, this.height);

  @override
  double? area() => width * height;
}

class UnknownShape extends Shape {
  @override
  double? area() => null;
}
