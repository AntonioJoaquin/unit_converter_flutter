import 'package:flutter/material.dart';

import 'src/common/style/color.dart';

abstract class View {
  static ThemeData get theme => ThemeData(
        scaffoldBackgroundColor: ColorPalette.background,
      );
}
