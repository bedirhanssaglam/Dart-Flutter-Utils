import 'package:flutter/material.dart';
import 'package:flutter_utils/utils/constants/string_constants.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: StringConstants.appName,
      home: HomePage(),
    );
  }
}
