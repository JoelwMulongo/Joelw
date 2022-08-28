

// Sometimes when you implement a constructor, you need to do some setup before the constructor body executes. For example, final fields must have values before the constructor body executes. Do this work in an initializer list, which goes between the constructor’s signature and its body:
Point.fromJson(Map<String, num> json)
    : x = json['x'],
      y = json['y'] {
  print('In Point.fromJson(): ($x, $y)');
}

// The initializer list is also a handy place to put asserts, which run only during development:
NonNegativePoint(this.x, this.y)
    : assert(x >= 0),
      assert(y >= 0) {
  print('I just made a NonNegativePoint: ($x, $y)');
}

// Code example
// Complete the FirstTwoLetters constructor below. Use an initializer list to assign the first two characters in word to the letterOne and LetterTwo properties. For extra credit, add an assert to catch words of less than two characters.
// Ignore all initial errors in the DartPad.
class FirstTwoLetters {
  final String letterOne;
  final String letterTwo;

  FirstTwoLetters(String word)
      : assert(word.length >= 2),
        letterOne = word[0],
        letterTwo = word[1];
}
