import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as inset;
import 'package:flutter_svg/svg.dart';

import '../../common/converter.dart';
import '../../common/style/color.dart';
import '../../common/style/media.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                const SizedBox(height: 32.0),
                Container(
                  height: kToolbarHeight,
                  width: double.infinity,
                  decoration: inset.BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: ColorPalette.background,
                    boxShadow: [
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
                  child: const _CustomInput(),
                ),
                const SizedBox(height: 32.0),
                _buildCategoryList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryList() => GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 24.0,
          childAspectRatio: .85,
        ),
        itemCount: Converter.values.length,
        itemBuilder: (_, index) => _CategoryItem(
          item: Converter.values[index],
        ),
      );
}

class _CustomInput extends StatelessWidget {
  const _CustomInput({
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

class _CategoryItem extends StatelessWidget {
  const _CategoryItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Converter item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: ColorPalette.background,
        boxShadow: [
          BoxShadow(
            offset: const Offset(2, 2),
            blurRadius: 3.0,
            spreadRadius: 2.0,
            color: ColorPalette.shadow,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            item.icon,
            color: ColorPalette.content,
          ),
          const SizedBox(height: 24.0),
          Text(
            item.name,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
              color: ColorPalette.content,
            ),
          ),
        ],
      ),
    );
  }
}
