import 'package:flutter/material.dart';

import '../../../../locator.dart';
import '../../common/converter.dart';
import 'converter_manager.dart';
import 'temperature/temperature_tab_page.dart';
import 'time/time_tab_page.dart';
import 'widgets/tab_item.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage({Key? key}) : super(key: key);

  @override
  State<ConverterPage> createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  final ConverterManager _manager = locator<ConverterManager>();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                children: const [
                  TimeTabPage(),
                  TemperatureTabPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
