import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/converter.dart';
import '../../../common/style/color.dart';
import '../converter_manager.dart';

class TabItem extends StatelessWidget {
  const TabItem(
    this._manager, {
    Key? key,
    required this.item,
  }) : super(key: key);

  final ConverterManager _manager;
  final Converter item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: null, //_manager.navigateToConverter,
      child: Container(
        margin: const EdgeInsets.only(bottom: 8.0),
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              item.icon,
              height: 24.0,
              color: ColorPalette.content,
            ),
            const SizedBox(width: 8.0),
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
      ),
    );
  }
}
