
// To allow classes to have multiple constructors, Dart supports named constructors:
class Point {
  double x, y;

  Point(this.x, this.y);

  Point.origin()
      : x = 0,
        y = 0;
}

// To use a named constructor, invoke it using its full name:
final myPoint = Point.origin();

// Code example
// Give the Color class a constructor named Color.black that sets all three properties to zero.
// Ignore all initial errors in the DartPad.
class Color {
  int red;
  int green;
  int blue;
  
  Color(this.red, this.green, this.blue);

  Color.black()
      : red = 0,
        green = 0,
        blue = 0;
}
