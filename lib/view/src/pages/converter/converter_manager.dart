import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/common/custom_notifier.dart';

@injectable
class ConverterManager {
  final CustomValueNotifier<int> _selectedTab = CustomValueNotifier<int>(0);
  CustomValueNotifier<int> get selectedTab => _selectedTab;

  late PageController _pageController;

  // setters
  void initTab(int tab) => _selectedTab.value = tab;

  void initConverter(int tab, PageController pageController) {
    _selectedTab.value = tab;
    _pageController = pageController;
  }

  void selectTab(int tab) {
    _selectedTab.value = tab;
    _goToPage();
  }

  // actions
  void _goToPage() => _pageController.animateToPage(
        _selectedTab.value,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInToLinear,
      );

  void dispose() {
    _selectedTab.dispose();
  }
}
