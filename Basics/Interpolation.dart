// To put the value of an expression inside a string, use ${expression}. If the expression is an identifier, you can omit the {}.

// Here are some examples of using string interpolation:
'${3 + 2}'	 	
// '5'

'${"word".toUpperCase()}'	 	
// 'WORD'

'$myObject'	 	
// The value of myObject.toString()

// Code example
// The following function takes two integers as parameters. Make it return a string containing both integers separated by a space. For example, stringify(2, 3) should return '2 3'.
String stringify(int x, int y) {
  return '$x $y';
}
