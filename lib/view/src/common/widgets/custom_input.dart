import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as inset;

import '../style/color.dart';
import '../style/media.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    Key? key,
    required this.onFocus,
    this.isFocused = false,
    this.inputType = TextInputType.text,
    this.isSearch = false,
  }) : super(key: key);

  final Function(bool) onFocus;
  final bool isFocused;
  final TextInputType inputType;
  final bool isSearch;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      width: double.infinity,
      decoration: inset.BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        border: isFocused ? Border.all(color: ColorPalette.primary) : null,
        color: ColorPalette.background,
        boxShadow: isFocused
            ? null
            : [
                inset.BoxShadow(
                  offset: -const Offset(2, 2),
                  blurRadius: 4.0,
                  color: ColorPalette.primary,
                  inset: true,
                ),
                inset.BoxShadow(
                  offset: const Offset(2, 2),
                  blurRadius: 2.0,
                  color: ColorPalette.shadow,
                  inset: true,
                ),
              ],
      ),
      child: _buildInput(),
    );
  }

  Widget _buildInput() => Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: Focus(
            onFocusChange: onFocus.call,
            child: TextField(
              decoration: _buildInputDecoration(),
              textAlignVertical: TextAlignVertical.center,
              cursorColor: ColorPalette.primary,
              keyboardType: inputType,
              focusNode: isFocused ? (FocusNode()..requestFocus()) : null,
              style: const TextStyle(
                fontSize: 16.0,
                color: ColorPalette.content,
              ),
            ),
          ),
        ),
      );

  InputDecoration _buildInputDecoration() => InputDecoration(
        border: InputBorder.none,
        contentPadding: const EdgeInsets.only(bottom: .0),
        isDense: true,
        suffixIcon: isSearch
            ? SvgPicture.asset(
                Media.icSearch,
                height: 24.0,
                color: ColorPalette.content,
              )
            : null,
        suffixIconConstraints: const BoxConstraints(
          minHeight: 32.0,
        ),
      );
}
