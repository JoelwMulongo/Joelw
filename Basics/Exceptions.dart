// Dart code can throw and catch exceptions. In contrast to Java, all of Dart’s exceptions are unchecked exceptions. Methods don’t declare which exceptions they might throw, and you aren’t required to catch any exceptions.

// Dart provides Exception and Error types, but you’re allowed to throw any non-null object:
throw Exception('Something bad happened.');
throw 'Waaaaaaah!';

// Use the try, on, and catch keywords when handling exceptions:
try {
  breedMoreLlamas();
} on OutOfLlamasException {
  // A specific exception
  buyMoreLlamas();
} on Exception catch (e) {
  // Anything else that is an exception
  print('Unknown exception: $e');
} catch (e) {
  // No specified type, handles all
  print('Something really unknown: $e');
}

// The try keyword works as it does in most other languages. Use the on keyword to filter for specific exceptions by type, and the catch keyword to get a reference to the exception object.

// If you can’t completely handle the exception, use the rethrow keyword to propagate the exception:
try {
  breedMoreLlamas();
} catch (e) {
  print('I was just trying to breed llamas!');
  rethrow;
}

// To execute code whether or not an exception is thrown, use finally:
try {
  breedMoreLlamas();
} catch (e) {
  // ... handle exception ...
} finally {
  // Always clean up, even if an exception is thrown.
  cleanLlamaStalls();
}

// Code example
// Implement tryFunction() below. It should execute an untrustworthy method and then do the following:
// - If untrustworthy() throws an ExceptionWithMessage, call logger.logException with the exception type and message (try using on and catch).
// - If untrustworthy() throws an Exception, call logger.logException with the exception type (try using on for this one).
// - If untrustworthy() throws any other object, don’t catch the exception.
// - After everything’s caught and handled, call logger.doneLogging (try using finally).
typedef VoidFunction = void Function();

class ExceptionWithMessage {
  final String message;
  const ExceptionWithMessage(this.message);
}

abstract class Logger {
  void logException(Type t, [String? msg]);
  void doneLogging();
}

void tryFunction(VoidFunction untrustworthy, Logger logger) {
  try {
    untrustworthy();
  } on ExceptionWithMessage catch (e) {
    logger.logException(e.runtimeType, e.message);
  } on Exception {
    logger.logException(Exception);
  } finally {
    logger.doneLogging();
  }
}
