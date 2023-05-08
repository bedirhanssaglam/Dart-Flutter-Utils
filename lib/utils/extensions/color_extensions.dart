import 'package:flutter/material.dart';

extension ColorExtensions on Color {
  Color darken([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hslColor = HSLColor.fromColor(this);
    final hslDark =
        hslColor.withLightness((hslColor.lightness - amount).clamp(0.0, 1.0));

    return hslDark.toColor();
  }

  Color lighten([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hslColor = HSLColor.fromColor(this);
    final hslLight =
        hslColor.withLightness((hslColor.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }
}
