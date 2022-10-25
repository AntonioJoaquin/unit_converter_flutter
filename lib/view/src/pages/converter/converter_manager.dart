import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/common/custom_notifier.dart';
import '../../common/converter.dart';
import 'category_label.dart';

@injectable
class ConverterManager {
  final CustomValueNotifier<int> _selectedTab = CustomValueNotifier<int>(0);
  CustomValueNotifier<int> get selectedTab => _selectedTab;

  final List<CategoryLabel> _categoryLabels = [];
  List<CategoryLabel> get categoryLabels => _categoryLabels;

  late PageController _pageController;

  // setters
  void initTab(int tab) => _selectedTab.value = tab;

  void initConverter(int tab, PageController pageController) {
    _selectedTab.value = tab;
    _pageController = pageController;

    for (Converter c in Converter.values) {
      _categoryLabels.add(CategoryLabel(GlobalObjectKey(c.id), c));
    }
  }

  void initialAutoScroll(BuildContext context) => Scrollable.ensureVisible(
        context,
        alignment: .2,
        duration: const Duration(milliseconds: 300),
      );

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
