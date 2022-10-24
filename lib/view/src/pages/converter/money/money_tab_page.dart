import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../locator.dart';
import '../../../common/style/color.dart';
import '../../../common/style/media.dart';
import '../../../utils/converters/money/money_unit_type.dart';
import 'money_tab_manager.dart';
import 'widgets/money_unit_input.dart';

class MoneyTabPage extends StatefulWidget {
  const MoneyTabPage({Key? key}) : super(key: key);

  @override
  State<MoneyTabPage> createState() => _MoneyTabPageState();
}

class _MoneyTabPageState extends State<MoneyTabPage> {
  final MoneyTabManager _manager = locator<MoneyTabManager>();

  @override
  void initState() {
    _manager.moneyControllerListeners.initListeners(_manager);

    super.initState();
  }

  @override
  void dispose() {
    _manager.dispose();
    _manager.moneyControllerListeners.dispose(_manager);

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
                  Media.icMoney,
                  color: ColorPalette.content,
                  height: 32.0,
                ),
                const SizedBox(width: 4.0),
                const Text(
                  'Money',
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
              itemCount: MoneyUnitType.values.length,
              itemBuilder: (_, index) {
                final item = MoneyUnitType.values[index];

                return Column(
                  children: [
                    const SizedBox(height: 24.0),
                    MoneyUnitInput(
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
  TextEditingController _getTextEditingControllers(MoneyUnitType type) {
    switch (type) {
      case MoneyUnitType.euro:
        return _manager.moneyControllerListeners.euroController;
      case MoneyUnitType.peseta:
        return _manager.moneyControllerListeners.pesetaController;
      case MoneyUnitType.dollar:
        return _manager.moneyControllerListeners.dollarController;
      default: // yen
        return _manager.moneyControllerListeners.yenController;
    }
  }
}
