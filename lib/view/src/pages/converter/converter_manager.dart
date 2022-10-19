import 'package:injectable/injectable.dart';

import '../../../../core/common/custom_notifier.dart';

@injectable
class ConverterManager {
  final CustomValueNotifier<int> _selectedTab = CustomValueNotifier<int>(0);
  CustomValueNotifier<int> get selectedTab => _selectedTab;

  // setters
  void selectTab(int tab) => _selectedTab.value = tab;

  void dispose() {
    _selectedTab.dispose();
  }
}
