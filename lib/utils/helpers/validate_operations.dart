import 'package:flutter/foundation.dart' show immutable;

import '../constants/string_constants.dart';

@immutable
class ValidateOperations {
  const ValidateOperations._();

  bool _isNumeric(String value) {
    for (int i = 0; i < value.length; i++) {
      if (double.tryParse(value[i]) != null) {
        return true;
      }
    }
    return false;
  }

  String? validateEmail(String value) {
    String pattern = StringConstants.emailRegex;
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return StringConstants.emailError;
    } else {
      return null;
    }
  }

  String? validateName(String value) {
    if (_isNumeric(value)) {
      return StringConstants.invalidName;
    }
    if (value.isEmpty) {
      return StringConstants.noName;
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.isEmpty) {
      return StringConstants.enterPassword;
    }
    return null;
  }

  bool isLink(String str) => str.contains(
        RegExp(StringConstants.linkRegex),
      );
}
