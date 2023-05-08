import 'package:flutter/material.dart';

mixin SingletonMixin {
  WidgetsBinding get widgetsBinding => WidgetsBinding.instance;
}
