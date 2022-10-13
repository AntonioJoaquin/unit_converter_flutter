import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common/converter.dart';
import '../../common/style/color.dart';

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
                GridView.builder(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
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
