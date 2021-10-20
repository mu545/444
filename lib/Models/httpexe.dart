class httpexeption implements Exception {
  final String message;
  httpexeption(this.message);

  @override
  String toString() {
    return message;
  }
}
