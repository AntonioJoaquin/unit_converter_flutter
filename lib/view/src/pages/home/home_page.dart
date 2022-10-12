import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common/converter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: Converter.values.length,
          itemBuilder: (_, index) {
            final item = Converter.values[index];

            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                children: [
                  SvgPicture.asset(item.icon),
                  Text(item.name),
                ],
              ),
            );
          }),
    );
  }
}
