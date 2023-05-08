import 'package:flutter/foundation.dart' show immutable;

@immutable
class StringConstants {
  const StringConstants._();

  static const String appName = 'Dart&Flutter Utils';
  static const String emailError = 'Please enter an email!';
  static const String invalidName = 'Invalid name!';
  static const String noName = 'Don\'t forget your name!';
  static const String enterPassword = 'Gotta be secure, enter a password!';
  static const String emailRegex =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  static const String linkRegex =
      r'^(https?:\/\/)?([\w\d_-]+)\.([\w\d_\.-]+)\/?\??([^#\n\r]*)?#?([^\n\r]*)';
  static const String imageUrlRegex =
      r'(http(s?):)([/|.|\w|\s|-])*\.(?:jpg|gif|png)';
}
