import 'package:injectable/injectable.dart';

import '../../../../core/services/navigation_service.dart';
import '../../../../locator.dart';
import '../../utils/router.dart';

@injectable
class SplashManager {
  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToHome() =>
      _navigationService.pushNamedAndRemoveUntil(AppRouter.homeRoute);
}
