import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../locator.dart';
import '../../../common/style/color.dart';
import '../../../common/style/media.dart';
import '../../../utils/converters/time/time_unit_type.dart';
import 'time_tab_manager.dart';
import 'widgets/time_unit_input.dart';

class TimeTabPage extends StatefulWidget {
  const TimeTabPage({Key? key}) : super(key: key);

  @override
  State<TimeTabPage> createState() => _TimeTabPageState();
}

class _TimeTabPageState extends State<TimeTabPage> {
  final TimeTabManager _manager = locator<TimeTabManager>();

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
    return Column(
      children: [
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
                TimeUnitInput(
                  _manager,
                  type: item,
                  controller: _getTextEditingControllers(item),
                ),
              ],
            );
          },
        ),
      ],
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
