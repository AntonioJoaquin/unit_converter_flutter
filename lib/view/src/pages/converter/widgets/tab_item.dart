import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/converter.dart';
import '../../../common/style/color.dart';
import '../converter_manager.dart';

class TabItem extends StatelessWidget {
  const TabItem(
    this._manager, {
    Key? key,
    required this.index,
    required this.item,
    required this.selectedIndex,
    required this.setInitialContext,
  }) : super(key: key);

  final ConverterManager _manager;
  final int index;
  final Converter item;
  final int selectedIndex;
  final Function setInitialContext;

  @override
  Widget build(BuildContext context) {
    if (index == selectedIndex) {
      setInitialContext.call(context);
    }

    return GestureDetector(
      onTap: () => _manager.selectTab(index), //_manager.navigateToConverter,
      child: ValueListenableBuilder(
        valueListenable: _manager.selectedTab,
        builder: (_, int selectedIndex, __) => Container(
          margin: const EdgeInsets.only(bottom: 8.0),
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: (selectedIndex == index)
                ? Border.all(color: ColorPalette.primary)
                : null,
            color: ColorPalette.background,
            boxShadow: (selectedIndex == index)
                ? null
                : [
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
      ),
    );
  }
}
