import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../locator.dart';
import '../../../common/style/color.dart';
import '../../../common/style/media.dart';
import '../../../utils/converters/longitude/longitude_unit_type.dart';
import 'longitude_tab_manager.dart';
import 'widgets/longitude_unit_input.dart';

class LongitudeTabPage extends StatefulWidget {
  const LongitudeTabPage({Key? key}) : super(key: key);

  @override
  State<LongitudeTabPage> createState() => _LongitudeTabPageState();
}

class _LongitudeTabPageState extends State<LongitudeTabPage> {
  final LongitudeTabManager _manager = locator<LongitudeTabManager>();

  @override
  void initState() {
    _manager.longitudeControllerListeners.initListeners(_manager);

    super.initState();
  }

  @override
  void dispose() {
    _manager.dispose();
    _manager.longitudeControllerListeners.dispose(_manager);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  Media.icLongitude,
                  color: ColorPalette.content,
                  height: 32.0,
                ),
                const SizedBox(width: 4.0),
                const Text(
                  'Longitude',
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
              itemCount: LongitudeUnitType.values.length,
              itemBuilder: (_, index) {
                final item = LongitudeUnitType.values[index];

                return Column(
                  children: [
                    const SizedBox(height: 24.0),
                    LongitudeUnitInput(
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
    );
  }

  // Functions
  TextEditingController _getTextEditingControllers(LongitudeUnitType type) {
    switch (type) {
      case LongitudeUnitType.kilometer:
        return _manager.longitudeControllerListeners.kilometerController;
      case LongitudeUnitType.meter:
        return _manager.longitudeControllerListeners.meterController;
      case LongitudeUnitType.centimeter:
        return _manager.longitudeControllerListeners.centimeterController;
      case LongitudeUnitType.millimeter:
        return _manager.longitudeControllerListeners.millimeterController;
      case LongitudeUnitType.micrometer:
        return _manager.longitudeControllerListeners.micrometerController;
      case LongitudeUnitType.nanometer:
        return _manager.longitudeControllerListeners.nanometerController;
      case LongitudeUnitType.mile:
        return _manager.longitudeControllerListeners.mileController;
      case LongitudeUnitType.yard:
        return _manager.longitudeControllerListeners.yardController;
      case LongitudeUnitType.foot:
        return _manager.longitudeControllerListeners.footController;
      case LongitudeUnitType.inch:
        return _manager.longitudeControllerListeners.inchController;
      default: // nauticalMile
        return _manager.longitudeControllerListeners.nauticalMileController;
    }
  }
}
