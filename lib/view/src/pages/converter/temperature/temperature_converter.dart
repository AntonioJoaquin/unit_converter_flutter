import 'package:injectable/injectable.dart';

import '../../../utils/converters/temperature/celsius_unit_converter.dart';
import '../../../utils/converters/temperature/fahrenheit_unit_converter.dart';
import '../../../utils/converters/temperature/kelvin_unit_converter.dart';

@lazySingleton
class TemperatureConverter {
  final CelsiusUnitConverter celsiusUnitConverter;
  final FahrenheitUnitConverter fahrenheitUnitConverter;
  final KelvinUnitConverter kelvinUnitConverter;

  TemperatureConverter(
    this.celsiusUnitConverter,
    this.fahrenheitUnitConverter,
    this.kelvinUnitConverter,
  );
}
