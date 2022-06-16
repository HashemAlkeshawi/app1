class GSGException implements Exception {}

class MyException implements Exception {
  @override
  String toString() {
    return "One of the arguments is Nigative.";
  }
}
