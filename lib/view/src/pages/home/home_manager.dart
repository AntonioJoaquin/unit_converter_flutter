import 'package:injectable/injectable.dart';

import '../../../../core/common/custom_notifier.dart';

@injectable
class HomeManager {
  final CustomValueNotifier<bool> _isSearchInputFocused =
      CustomValueNotifier(false);
  CustomValueNotifier<bool> get isSearchInputFocused => _isSearchInputFocused;

  // setters
  void updateSearchFocus() =>
      _isSearchInputFocused.value = !_isSearchInputFocused.value;
}
