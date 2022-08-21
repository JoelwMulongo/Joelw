// Using a curly brace syntax, you can define optional parameters that have names.
void printName(String firstName, String lastName, {String? suffix}) {
  print('$firstName $lastName ${suffix ?? ''}');
}
// ···
  printName('Avinash', 'Gupta');
  printName('Poshmeister', 'Moneybuckets', suffix: 'IV');
  
// As you might expect, the default value of an optional named parameter is null, but you can provide a default value.
// If the type of a parameter is non-nullable, then you must either provide a default value (as shown in the following code) or mark the parameter as required (as shown in the constructor section).

void printName(String firstName, String lastName, {String suffix = ''}) {
  print('$firstName $lastName $suffix');
}

// A function can’t have both optional positional and optional named parameters.

// Code example
// Add a copyWith() instance method to the MyDataObject class. It should take three named, nullable parameters:
int? newInt
String? newString
double? newDouble

// YourcopyWith() method should return a new MyDataObject based on the current instance, with data from the preceding parameters (if any) copied into the object’s properties. For example, if newInt is non-null, then copy its value into anInt.

// Ignore all initial errors in the DartPad.
class MyDataObject {
  final int anInt;
  final String aString;
  final double aDouble;

  MyDataObject({
     this.anInt = 1,
     this.aString = 'Old!',
     this.aDouble = 2.0,
  });

  MyDataObject copyWith({int? newInt, String? newString, double? newDouble}) {
    return MyDataObject(
      anInt: newInt ?? this.anInt,
      aString: newString ?? this.aString,
      aDouble: newDouble ?? this.aDouble,
    );
  }
}
