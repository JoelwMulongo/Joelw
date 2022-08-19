// Sometimes a constructor’s only purpose is to redirect to another constructor in the same class. A redirecting constructor’s body is empty, with the constructor call appearing after a colon (:).
class Automobile {
  String make;
  String model;
  int mpg;

  // The main constructor for this class.
  Automobile(this.make, this.model, this.mpg);

  // Delegates to the main constructor.
  Automobile.hybrid(String make, String model) : this(make, model, 60);

  // Delegates to a named constructor
  Automobile.fancyHybrid() : this.hybrid('Futurecar', 'Mark 2');
}

// Code example
// Remember the Color class from above? Create a named constructor called black, but rather than manually assigning the properties, redirect it to the default constructor with zeros as the arguments.
// Ignore all initial errors in the DartPad.
class Color {
  int red;
  int green;
  int blue;
  
  Color(this.red, this.green, this.blue);

  Color.black() : this(0, 0, 0);
}
