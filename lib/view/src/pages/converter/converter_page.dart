import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:unit_converter/view/src/common/widgets/custom_input.dart';

import '../../common/style/color.dart';
import '../../common/style/media.dart';

class ConverterPage extends StatelessWidget {
  const ConverterPage({Key? key}) : super(key: key);

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
                const _UnitInput(unitName: 'Century', form: '/ 36500'),
                const SizedBox(height: 24.0),
                const _UnitInput(unitName: 'Decade', form: '/ 3650'),
                const SizedBox(height: 24.0),
                const _UnitInput(unitName: 'Year', form: '/ 365'),
                const SizedBox(height: 24.0),
                const _UnitInput(unitName: 'Month', form: '/ 30.415'),
                const SizedBox(height: 24.0),
                const _UnitInput(unitName: 'Week', form: '/ 30.415'),
                const SizedBox(height: 24.0),
                const _UnitInput(unitName: 'Day', form: ''),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _UnitInput extends StatelessWidget {
  const _UnitInput({
    required this.unitName,
    required this.form,
    Key? key,
  }) : super(key: key);

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
        const CustomInput(inputType: TextInputType.number),
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
