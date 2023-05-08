extension StatusCodeExtension on int {
  bool get isSuccessful => this >= 200 && this < 300;
  bool get isRedirection => this >= 300 && this < 400;
  bool get isClientError => this >= 400 && this < 500;
  bool get isServerError => this >= 500 && this < 600;
}
