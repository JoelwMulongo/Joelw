

// Dart 2.12 introduced sound null safety, meaning that (when you enable null safety) values can’t be null unless you say they can be. In other words, types are non-nullable by default.

// For example, consider the following code, which is invalid because (with null safety) a variable of type int can’t have the value null:
int a = null; // INVALID in null-safe Dart.

// When creating a variable in Dart 2.12 or higher, you can add ? to the type to indicate that the variable can be null:
int? a = null; // Valid in null-safe Dart.

// You can simplify that code a bit because, in all versions of Dart, null is the default value for uninitialized variables:
int? a; // The initial value of a is null.

// Code example
String? name = 'Joel';
String? address;
