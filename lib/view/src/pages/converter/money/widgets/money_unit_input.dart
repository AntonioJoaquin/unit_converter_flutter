import 'package:flutter/material.dart';

import '../../../../common/style/color.dart';
import '../../../../common/widgets/custom_input.dart';
import '../../../../utils/converters/money/money_unit_type.dart';
import '../money_tab_manager.dart';

class MoneyUnitInput extends StatelessWidget {
  const MoneyUnitInput(
    this._manager, {
    required this.type,
    required this.controller,
    Key? key,
  }) : super(key: key);

  final MoneyTabManager _manager;
  final MoneyUnitType type;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          type.name,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: ColorPalette.content,
          ),
        ),
        const SizedBox(height: 8.0),
        ValueListenableBuilder(
          valueListenable: _manager.inputTypeFocused,
          builder: (_, MoneyUnitType? focusedType, __) => CustomInput(
            controller: controller,
            onFocus: (isFocused) =>
                isFocused ? _manager.onFocusInput(type) : {},
            isFocused: focusedType == type,
            inputType: TextInputType.number,
          ),
        ),
        const SizedBox(height: 8.0),
        ValueListenableBuilder(
          valueListenable: _manager.inputTypeFrom,
          builder: (_, MoneyUnitType typeFrom, __) => RichText(
            text: TextSpan(
              style: const TextStyle(
                fontSize: 16.0,
                color: ColorPalette.content,
              ),
              children: [
                const TextSpan(
                  text: 'Form: ',
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
                TextSpan(
                  text: '${typeFrom.name} ',
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                TextSpan(text: _manager.getToForm(type)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
