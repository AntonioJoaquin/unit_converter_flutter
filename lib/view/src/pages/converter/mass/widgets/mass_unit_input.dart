import 'package:flutter/material.dart';

import '../../../../common/style/color.dart';
import '../../../../common/widgets/custom_input.dart';
import '../../../../utils/converters/mass/mass_unit_type.dart';
import '../mass_tab_manager.dart';

class MassUnitInput extends StatelessWidget {
  const MassUnitInput(
    this._manager, {
    required this.type,
    required this.controller,
    Key? key,
  }) : super(key: key);

  final MassTabManager _manager;
  final MassUnitType type;
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
            fontWeight: FontWeight.w500,
            color: ColorPalette.content,
          ),
        ),
        const SizedBox(height: 8.0),
        ValueListenableBuilder(
          valueListenable: _manager.inputTypeFocused,
          builder: (_, MassUnitType? focusedType, __) => CustomInput(
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
          builder: (_, MassUnitType typeFrom, __) => RichText(
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
                  style: const TextStyle(fontWeight: FontWeight.w800),
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
