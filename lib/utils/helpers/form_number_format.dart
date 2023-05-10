import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String newText = newValue.text.replaceAll(RegExp(r'[^0-9]+'), '');
    if (newText.length > 10) return oldValue;
    String formattedText = newText;
    const String spacingPattern = 'XXX XXX XX XX';
    String buffer = spacingPattern;
    for (var char in newText.characters) {
      if (buffer.contains('X')) {
        buffer = buffer.replaceFirst('X', char);
      } else {
        buffer += char;
      }
    }
    buffer = buffer.replaceAll('X', '');

    formattedText = buffer.trim();

    return newValue.replaced(
      TextRange(
        start: 0,
        end: newValue.text.length,
      ),
      formattedText,
    );
  }
}
