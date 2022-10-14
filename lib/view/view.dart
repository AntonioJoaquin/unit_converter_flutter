import 'package:flutter/material.dart';

import 'src/common/style/color.dart';
import 'src/utils/router.dart';

abstract class View {
  /// Routing
  static Route<dynamic> getRoutes(RouteSettings settings) =>
      AppRouter.generateRoute(settings);

  static String getInitialRoute() => AppRouter.splashRoute;

  /// Theming
  static ThemeData get theme => ThemeData(
        scaffoldBackgroundColor: ColorPalette.background,
      );
}
