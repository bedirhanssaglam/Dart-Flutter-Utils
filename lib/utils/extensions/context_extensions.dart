import 'package:flutter/material.dart';

extension NavigatorExtension on BuildContext {
  NavigatorState get navigator => Navigator.of(this);
}
