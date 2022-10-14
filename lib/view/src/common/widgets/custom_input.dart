import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../style/color.dart';
import '../style/media.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Center(
        child: TextField(
          decoration: _buildInputDecoration(),
          textAlignVertical: TextAlignVertical.center,
          cursorColor: ColorPalette.primary,
          style: const TextStyle(
            fontSize: 16.0,
            color: ColorPalette.content,
          ),
        ),
      ),
    );
  }

  InputDecoration _buildInputDecoration() => InputDecoration(
        border: InputBorder.none,
        contentPadding: const EdgeInsets.only(bottom: .0),
        isDense: true,
        suffixIcon: SvgPicture.asset(
          Media.icSearch,
          height: 24.0,
          color: ColorPalette.content,
        ),
        suffixIconConstraints: const BoxConstraints(
          minHeight: 32.0,
        ),
      );
}
