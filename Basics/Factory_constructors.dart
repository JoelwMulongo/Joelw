// Dart supports factory constructors, which can return subtypes or even null. To create a factory constructor, use the factory keyword:
class Square extends Shape {}

class Circle extends Shape {}

class Shape {
  Shape();

  factory Shape.fromTypeName(String typeName) {
    if (typeName == 'square') return Square();
    if (typeName == 'circle') return Circle();

    print('I don\'t recognize $typeName');
    throw Error();
  }
}

// Code example
// Fill in he factory constructor named IntegerHolder.fromList, making it do the following:
// - If the list has one value, create an IntegerSingle with that value.
// - If the list has two values, create an IntegerDouble with the values in order.
// - If the list has three values, create an IntegerTriple with the values in order.
// - Otherwise, throw an Error.
class IntegerHolder {
  IntegerHolder();
  
  factory IntegerHolder.fromList(List<int> list) {
    if (list.length == 1) {
      return IntegerSingle(list[0]);
    } else if (list.length == 2) {
      return IntegerDouble(list[0], list[1]);
    } else if (list.length == 3) {
      return IntegerTriple(list[0], list[1], list[2]);
    } else {
      throw Error();
    } 
  }
}

class IntegerSingle extends IntegerHolder {
  final int a;
  IntegerSingle(this.a); 
}

class IntegerDouble extends IntegerHolder {
  final int a;
  final int b;
  IntegerDouble(this.a, this.b); 
}

class IntegerTriple extends IntegerHolder {
  final int a;
  final int b;
  final int c;
  IntegerTriple(this.a, this.b, this.c); 
}
