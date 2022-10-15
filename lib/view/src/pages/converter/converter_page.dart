import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:unit_converter/view/src/common/widgets/custom_input.dart';
import 'package:unit_converter/view/src/pages/converter/converter_manager.dart';
import 'package:unit_converter/view/src/utils/converters/time/time_unit_type.dart';

import '../../../../locator.dart';
import '../../common/style/color.dart';
import '../../common/style/media.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage({Key? key}) : super(key: key);

  @override
  State<ConverterPage> createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  final ConverterManager _manager = locator<ConverterManager>();

  @override
  void dispose() {
    _manager.dispose();

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
                _UnitInput(
                  _manager,
                  type: TimeUnitType.century,
                  unitName: 'Century',
                  form: '/ 36500',
                ),
                const SizedBox(height: 24.0),
                _UnitInput(
                  _manager,
                  type: TimeUnitType.decade,
                  unitName: 'Decade',
                  form: '/ 3650',
                ),
                const SizedBox(height: 24.0),
                _UnitInput(
                  _manager,
                  type: TimeUnitType.year,
                  unitName: 'Year',
                  form: '/ 365',
                ),
                const SizedBox(height: 24.0),
                _UnitInput(
                  _manager,
                  type: TimeUnitType.month,
                  unitName: 'Month',
                  form: '/ 30.415',
                ),
                const SizedBox(height: 24.0),
                _UnitInput(
                  _manager,
                  type: TimeUnitType.week,
                  unitName: 'Week',
                  form: '/ 30.415',
                ),
                const SizedBox(height: 24.0),
                _UnitInput(
                  _manager,
                  type: TimeUnitType.day,
                  unitName: 'Day',
                  form: '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _UnitInput extends StatelessWidget {
  const _UnitInput(
    this._manager, {
    required this.type,
    required this.unitName,
    required this.form,
    Key? key,
  }) : super(key: key);

  final ConverterManager _manager;
  final TimeUnitType type;
  final String unitName;
  final String form;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          unitName,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: ColorPalette.content,
          ),
        ),
        const SizedBox(height: 8.0),
        ValueListenableBuilder(
          valueListenable: _manager.inputTypeFocused,
          builder: (_, TimeUnitType? focusedType, __) => CustomInput(
            onFocus: (isFocused) =>
                isFocused ? _manager.onFocusInput(type) : {},
            isFocused: focusedType == type,
            inputType: TextInputType.number,
          ),
        ),
        const SizedBox(height: 8.0),
        RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: 16.0,
              color: ColorPalette.content,
            ),
            children: [
              const TextSpan(
                text: 'Form:',
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              const TextSpan(
                text: ' day ',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              TextSpan(text: form),
            ],
          ),
        ),
      ],
    );
  }
}
