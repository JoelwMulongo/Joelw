// To guard access to a property or method of an object that might be null, put a question mark (?) before the dot (.):

myObject?.someProperty

// The preceding code is equivalent to the following:
(myObject != null) ? myObject.someProperty : null

// You can chain multiple uses of ?. together in a single expression:
myObject?.someProperty?.someMethod()

// The preceding code returns null (and never calls someMethod()) if either myObject or myObject.someProperty is null.

// Code example
// Try using conditional property access to finish the code snippet below.
// This method should return the uppercase version of `str`
// or null if `str` is null.
String? upperCaseIt(String? str) {
  return str?.toUpperCase();
}
