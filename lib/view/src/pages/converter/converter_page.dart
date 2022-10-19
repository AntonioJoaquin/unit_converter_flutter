import 'package:flutter/material.dart';

import 'temperature/temperature_tab_page.dart';
import 'time/time_tab_page.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage({Key? key}) : super(key: key);

  @override
  State<ConverterPage> createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 32.0),
                TemperatureTabPage(),
                SizedBox(height: 48.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
