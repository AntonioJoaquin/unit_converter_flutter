import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../locator.dart';
import '../../../common/style/color.dart';
import '../../../common/style/media.dart';
import '../../../utils/converters/velocity/velocity_unit_type.dart';
import 'velocity_tab_manager.dart';
import 'widgets/velocity_unit_input.dart';

class VelocityTabPage extends StatefulWidget {
  const VelocityTabPage({Key? key}) : super(key: key);

  @override
  State<VelocityTabPage> createState() => _VelocityTabPageState();
}

class _VelocityTabPageState extends State<VelocityTabPage> {
  final VelocityTabManager _manager = locator<VelocityTabManager>();

  @override
  void initState() {
    _manager.velocityControllerListeners.initListeners(_manager);

    super.initState();
  }

  @override
  void dispose() {
    _manager.dispose();
    _manager.velocityControllerListeners.dispose(_manager);

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
                  Media.icVelocity,
                  color: ColorPalette.content,
                  height: 32.0,
                ),
                const SizedBox(width: 4.0),
                const Text(
                  'Velocity',
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
              itemCount: VelocityUnitType.values.length,
              itemBuilder: (_, index) {
                final item = VelocityUnitType.values[index];

                return Column(
                  children: [
                    const SizedBox(height: 24.0),
                    VelocityUnitInput(
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
  TextEditingController _getTextEditingControllers(VelocityUnitType type) {
    switch (type) {
      case VelocityUnitType.milePerHour:
        return _manager.velocityControllerListeners.milePerHourController;
      case VelocityUnitType.footPerSecond:
        return _manager.velocityControllerListeners.footPerSecondController;
      case VelocityUnitType.meterPerSecond:
        return _manager.velocityControllerListeners.meterPerSecondController;
      case VelocityUnitType.kilometerPerHour:
        return _manager.velocityControllerListeners.kilometerPerHourController;
      default: // knot
        return _manager.velocityControllerListeners.knotController;
    }
  }
}
