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
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: TimeUnitType.values.length,
                  itemBuilder: (_, index) {
                    final item = TimeUnitType.values[index];

                    return Column(
                      children: [
                        const SizedBox(height: 24.0),
                        UnitInput(
                          _manager,
                          type: item,
                          controller: _getTextEditingControllers(item),
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(height: 48.0),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Functions
  TextEditingController _getTextEditingControllers(TimeUnitType type) {
    switch (type) {
      case TimeUnitType.century:
        return _manager.timeControllerListeners.centuryController;
      case TimeUnitType.decade:
        return _manager.timeControllerListeners.decadeController;
      case TimeUnitType.year:
        return _manager.timeControllerListeners.yearController;
      case TimeUnitType.month:
        return _manager.timeControllerListeners.monthController;
      case TimeUnitType.week:
        return _manager.timeControllerListeners.weekController;
      case TimeUnitType.day:
        return _manager.timeControllerListeners.dayController;
      case TimeUnitType.hour:
        return _manager.timeControllerListeners.hourController;
      case TimeUnitType.minute:
        return _manager.timeControllerListeners.minuteController;
      case TimeUnitType.second:
        return _manager.timeControllerListeners.secondController;
      case TimeUnitType.millisecond:
        return _manager.timeControllerListeners.millisecondController;
      case TimeUnitType.microsecond:
        return _manager.timeControllerListeners.microsecondController;
      default: // nanosecond
        return _manager.timeControllerListeners.nanosecondController;
    }
  }
}
