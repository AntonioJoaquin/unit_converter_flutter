import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../locator.dart';
import '../../common/converter.dart';
import '../../common/style/color.dart';
import '../../common/widgets/custom_input.dart';
import 'home_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeManager _manager = locator<HomeManager>();

  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _manager.dispose();
    _searchController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  const SizedBox(height: 32.0),
                  CustomInput(
                    controller: _searchController,
                    onFocus: (_) {},
                    isSearch: true,
                  ),
                  const SizedBox(height: 32.0),
                  _buildCategoryList(),
                ],
              ),
            ),
          ),
        ),
      );

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
          _manager,
          item: Converter.values[index],
        ),
      );
}

class _CategoryItem extends StatelessWidget {
  const _CategoryItem(
    this._manager, {
    Key? key,
    required this.item,
  }) : super(key: key);

  final HomeManager _manager;
  final Converter item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _manager.navigateToConverter(item),
      child: Container(
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
      ),
    );
  }
}
