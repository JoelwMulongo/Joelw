class Singleton {
  static Singleton _instance;

  final int prop;

  factory Singleton() =>
    _instance ??= new Singleton._internal();

  Singleton._internal()
    : prop = 42;
}
