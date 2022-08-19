// Dart has two kinds of function parameters: positional and named. Positional parameters are the kind you’re likely familiar with:

int sumUp(int a, int b, int c) {
  return a + b + c;
}

// ···
  int total = sumUp(1, 2, 3);
  
// With Dart, you can make these positional parameters optional by wrapping them in brackets:
int sumUpToFive(int a, [int? b, int? c, int? d, int? e]) {
  int sum = a;
  if (b != null) sum += b;
  if (c != null) sum += c;
  if (d != null) sum += d;
  if (e != null) sum += e;
  return sum;
}
// ···
  int total = sumUpToFive(1, 2);
  int otherTotal = sumUpToFive(1, 2, 3, 4, 5);
  
// Optional positional parameters are always last in a function’s parameter list. Their default value is null unless you provide another default value:
int sumUpToFive(int a, [int b = 2, int c = 3, int d = 4, int e = 5]) {
// ···
}
// ···
  int newTotal = sumUpToFive(1);
  print(newTotal); // <-- prints 15
  
// Code example
// Implement a function called joinWithCommas() that accepts one to five integers, then returns a string of those numbers separated by commas. Here are some examples of function calls and returned values:
Function call	 	Returned value
joinWithCommas(1)	 	'1'
joinWithCommas(1, 2, 3)	 	'1,2,3'
joinWithCommas(1, 1, 1, 1, 1)	 	'1,1,1,1,1'

String joinWithCommas(int a, [int? b, int? c, int? d, int? e]) {
  var total = '$a';
  if (b != null) total = '$total,$b';
  if (c != null) total = '$total,$c';
  if (d != null) total = '$total,$d';
  if (e != null) total = '$total,$e';
  return total;
}
