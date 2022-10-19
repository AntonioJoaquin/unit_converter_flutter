import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../locator.dart';
import '../../../common/style/color.dart';
import '../../../common/style/media.dart';
import '../../../utils/converters/temperature/temperature_unit_tytpe.dart';
import 'temperature_tab_manager.dart';
import 'widgets/temperature_unit_input.dart';

class TemperatureTabPage extends StatefulWidget {
  const TemperatureTabPage({Key? key}) : super(key: key);

  @override
  State<TemperatureTabPage> createState() => _TemperatureTabPageState();
}

class _TemperatureTabPageState extends State<TemperatureTabPage> {
  final TemperatureTabManager _manager = locator<TemperatureTabManager>();

  @override
  void initState() {
    _manager.temperatureControllerListeners.initListeners(_manager);

    super.initState();
  }

  @override
  void dispose() {
    _manager.dispose();
    _manager.temperatureControllerListeners.dispose(_manager);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(
              Media.icTemperature,
              color: ColorPalette.content,
              height: 32.0,
            ),
            const SizedBox(width: 4.0),
            const Text(
              'Temperature',
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
          itemCount: TemperatureUnitType.values.length,
          itemBuilder: (_, index) {
            final item = TemperatureUnitType.values[index];

            return Column(
              children: [
                const SizedBox(height: 24.0),
                TemperatureUnitInput(
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
  TextEditingController _getTextEditingControllers(TemperatureUnitType type) {
    switch (type) {
      case TemperatureUnitType.celsius:
        return _manager.temperatureControllerListeners.celsiusController;
      case TemperatureUnitType.fahrenheit:
        return _manager.temperatureControllerListeners.fahrenheitController;
      default: // kelvin
        return _manager.temperatureControllerListeners.kelvinController;
    }
  }
}
