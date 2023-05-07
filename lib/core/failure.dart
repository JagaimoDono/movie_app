class Failure implements Exception {
  final String message;
  final int? code;
  final Exception? exception;

  Failure({required this.message, this.code, this.exception});
}
