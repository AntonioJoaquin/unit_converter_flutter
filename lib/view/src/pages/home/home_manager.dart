import 'package:injectable/injectable.dart';
import 'package:unit_converter/view/src/common/converter.dart';

import '../../../../core/common/custom_notifier.dart';
import '../../../../core/services/navigation_service.dart';
import '../../../../locator.dart';
import '../../utils/router.dart';
import '../converter/converter_arguments.dart';

@injectable
class HomeManager {
  final NavigationService _navigationService = locator<NavigationService>();

  final CustomValueNotifier<bool> _isSearchInputFocused =
      CustomValueNotifier(false);
  CustomValueNotifier<bool> get isSearchInputFocused => _isSearchInputFocused;

  // setters
  void updateSearchFocus() =>
      _isSearchInputFocused.value = !_isSearchInputFocused.value;

  // navigation
  void navigateToConverter(Converter converterCategory) =>
      _navigationService.pushNamedWithArguments(
        AppRouter.converterRoute,
        ConverterArguments(converterCategory),
      );

  void dispose() {
    _isSearchInputFocused.dispose();
  }
}
