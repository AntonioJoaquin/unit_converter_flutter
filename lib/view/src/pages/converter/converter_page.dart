import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../locator.dart';
import '../../common/style/color.dart';
import '../../common/style/media.dart';
import '../../utils/converters/time/time_unit_type.dart';
import 'converter_manager.dart';
import 'widgets/unit_input.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage({Key? key}) : super(key: key);

  @override
  State<ConverterPage> createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  final ConverterManager _manager = locator<ConverterManager>();

  @override
  void initState() {
    _manager.timeControllerListeners.initListeners(_manager);

    super.initState();
  }

  @override
  void dispose() {
    _manager.dispose();
    _manager.timeControllerListeners.dispose(_manager);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 32.0),
                Row(
                  children: [
                    SvgPicture.asset(
                      Media.icTime,
                      color: ColorPalette.content,
                      height: 32.0,
                    ),
                    const SizedBox(width: 4.0),
                    const Text(
                      'Time',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w300,
                        color: ColorPalette.content,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                UnitInput(
                  _manager,
                  type: TimeUnitType.century,
                  controller:
                      _manager.timeControllerListeners.centuryController,
                ),
                const SizedBox(height: 24.0),
                UnitInput(
                  _manager,
                  type: TimeUnitType.decade,
                  controller: _manager.timeControllerListeners.decadeController,
                ),
                const SizedBox(height: 24.0),
                UnitInput(
                  _manager,
                  type: TimeUnitType.year,
                  controller: _manager.timeControllerListeners.yearController,
                ),
                const SizedBox(height: 24.0),
                UnitInput(
                  _manager,
                  type: TimeUnitType.month,
                  controller: _manager.timeControllerListeners.monthController,
                ),
                const SizedBox(height: 24.0),
                UnitInput(
                  _manager,
                  type: TimeUnitType.week,
                  controller: _manager.timeControllerListeners.weekController,
                ),
                const SizedBox(height: 24.0),
                UnitInput(
                  _manager,
                  type: TimeUnitType.day,
                  controller: _manager.timeControllerListeners.dayController,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
