import 'package:flutter/material.dart';
import 'package:unit_converter/view/src/pages/home/home_page.dart';

import 'view/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: View.theme,
      home: const HomePage(),
    );
  }
}
