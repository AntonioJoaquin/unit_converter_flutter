import 'package:flutter/material.dart';

import '../../../../locator.dart';
import '../../common/converter.dart';
import 'converter_manager.dart';
import 'longitude/longitude_tab_page.dart';
import 'mass/mass_tab_page.dart';
import 'money/money_tab_page.dart';
import 'temperature/temperature_tab_page.dart';
import 'time/time_tab_page.dart';
import 'velocity/velocity_tab_page.dart';
import 'widgets/tab_item.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage(
    this.converterCategory, {
    Key? key,
  }) : super(key: key);

  final Converter converterCategory;

  @override
  State<ConverterPage> createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  final ConverterManager _manager = locator<ConverterManager>();

  final ScrollController _scrollController = ScrollController();
  late PageController _pageController;
  late BuildContext _initialTabContext;

  @override
  void initState() {
    _pageController = PageController(initialPage: widget.converterCategory.id);
    _manager.initConverter(widget.converterCategory.id, _pageController);

    WidgetsBinding.instance.addPostFrameCallback(
      (_) => Future.delayed(
        const Duration(milliseconds: 300),
        () => _manager.initialAutoScroll(_initialTabContext),
      ),
    );

    super.initState();
  }

  @override
  void dispose() {
    _manager.dispose();
    _scrollController.dispose();
    _pageController.dispose();

    super.dispose();
  }

  void _setInitialTabIndex(BuildContext context) =>
      _initialTabContext = context;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 54.0),
              SizedBox(
                height: 54.0,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  controller: _scrollController,
                  itemCount: _manager.categoryLabels.length,
                  itemBuilder: (_, index) {
                    final item = _manager.categoryLabels[index];

                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TabItem(
                        _manager,
                        index: index,
                        item: item.category,
                        selectedIndex: widget.converterCategory.id,
                        setInitialContext: (context) =>
                            _setInitialTabIndex(context),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 32.0),
              Expanded(
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  children: const [
                    LongitudeTabPage(),
                    MassTabPage(),
                    TimeTabPage(),
                    TemperatureTabPage(),
                    MoneyTabPage(),
                    VelocityTabPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
