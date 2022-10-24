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

  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: widget.converterCategory.id);
    _manager.initConverter(widget.converterCategory.id, _pageController);

    super.initState();
  }

  @override
  void dispose() {
    _manager.dispose();
    _pageController.dispose();

    super.dispose();
  }

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
                  itemCount: Converter.values.length,
                  itemBuilder: (_, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TabItem(
                      _manager,
                      index: index,
                      item: Converter.values[index],
                    ),
                  ),
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
