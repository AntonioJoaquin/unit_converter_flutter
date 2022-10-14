import 'package:flutter/material.dart';

import 'locator.dart';
import 'view/view.dart';

void main() {
  setUpLocator();
  final navigatorKey = navigatorKeyBuilder(GlobalKey<NavigatorState>());

  runApp(MyApp(navigatorKey));
}

class MyApp extends StatelessWidget {
  const MyApp(this._navigatorKey, {super.key});

  final GlobalKey<NavigatorState> _navigatorKey;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: View.theme,
      navigatorKey: _navigatorKey,
      onGenerateRoute: View.getRoutes,
      initialRoute: View.getInitialRoute(),
    );
  }
}
