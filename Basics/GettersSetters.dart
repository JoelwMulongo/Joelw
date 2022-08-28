

// You can define getters and setters whenever you need more control over a property than a simple field allows.

// For example, you can make sure a property’s value is valid:
class MyClass {
  int _aProperty = 0;

  int get aProperty => _aProperty;

  set aProperty(int value) {
    if (value >= 0) {
      _aProperty = value;
    }
  }
}

// You can also use a getter to define a computed property:
class MyClass {
  final List<int> _values = [];

  void addValue(int value) {
    _values.add(value);
  }

  // A computed property.
  int get count {
    return _values.length;
  }
}

// Code example
// Imagine you have a shopping cart class that keeps a private List<double> of prices. Add the following:

// A getter called total that returns the sum of the prices
// A setter that replaces the list with a new one, as long as the new list doesn’t contain any negative prices (in which case the setter should throw an InvalidPriceException).
// Ignore all initial errors in the DartPad.
class InvalidPriceException {}

class ShoppingCart {
  List<double> _prices = [];
  
  double get total => _prices.fold(0, (e, t) => e + t);
  
  set prices(List<double> value) {
    if (value.any((p) => p < 0)) {
      throw InvalidPriceException();
    }
    
    _prices = value;
  }
}
