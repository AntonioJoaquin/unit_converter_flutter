import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../locator.dart';
import '../../../common/style/color.dart';
import '../../../common/style/media.dart';
import '../../../utils/converters/mass/mass_unit_type.dart';
import 'mass_tab_manager.dart';
import 'widgets/mass_unit_input.dart';

class MassTabPage extends StatefulWidget {
  const MassTabPage({Key? key}) : super(key: key);

  @override
  State<MassTabPage> createState() => _MassTabPageState();
}

class _MassTabPageState extends State<MassTabPage> {
  final MassTabManager _manager = locator<MassTabManager>();

  @override
  void initState() {
    _manager.massControllerListeners.initListeners(_manager);

    super.initState();
  }

  @override
  void dispose() {
    _manager.dispose();
    _manager.massControllerListeners.dispose(_manager);

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
                  Media.icMass,
                  color: ColorPalette.content,
                  height: 32.0,
                ),
                const SizedBox(width: 4.0),
                const Text(
                  'Mass',
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
              itemCount: MassUnitType.values.length,
              itemBuilder: (_, index) {
                final item = MassUnitType.values[index];

                return Column(
                  children: [
                    const SizedBox(height: 24.0),
                    MassUnitInput(
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
  TextEditingController _getTextEditingControllers(MassUnitType type) {
    switch (type) {
      case MassUnitType.ton:
        return _manager.massControllerListeners.tonController;
      case MassUnitType.kilogram:
        return _manager.massControllerListeners.kilogramController;
      case MassUnitType.gram:
        return _manager.massControllerListeners.gramController;
      case MassUnitType.milligram:
        return _manager.massControllerListeners.milligramController;
      case MassUnitType.microgram:
        return _manager.massControllerListeners.microgramController;
      case MassUnitType.longTon:
        return _manager.massControllerListeners.longTonController;
      case MassUnitType.shortTon:
        return _manager.massControllerListeners.shortTonController;
      case MassUnitType.stone:
        return _manager.massControllerListeners.stoneController;
      case MassUnitType.pound:
        return _manager.massControllerListeners.poundController;
      default: // ounce
        return _manager.massControllerListeners.ounceController;
    }
  }
}
