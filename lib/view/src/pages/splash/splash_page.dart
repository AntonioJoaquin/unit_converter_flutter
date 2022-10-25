import 'package:flutter/material.dart';

import '../../../../locator.dart';
import '../../common/style/color.dart';
import 'splash_manager.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key? key}) : super(key: key);

  final SplashManager _manager = locator<SplashManager>();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(
        const Duration(seconds: 2),
        _manager.navigateToHome,
      ),
      builder: (_, __) => const Scaffold(
        body: Center(
          child: Text(
            'OCOnverter',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w800,
              color: ColorPalette.primary,
            ),
          ),
        ),
      ),
    );
  }
}
