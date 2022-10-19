import 'package:injectable/injectable.dart';

import 'temperature_unit_tytpe.dart';

@lazySingleton
class KelvinUnitConverter {
  double convert(TemperatureUnitType type, double value) {
    switch (type) {
      case TemperatureUnitType.celsius:
        return _convertCelsiusToKelvin(value);
      case TemperatureUnitType.fahrenheit:
        return _convertFahrenheitToKelvin(value);
      default: // kelvin

        return value;
    }
  }

  // From celsius
  double _convertCelsiusToKelvin(double value) => value + 273.15;

  // From fahrenheit
  double _convertFahrenheitToKelvin(double value) =>
      (value - 32) * 5 / 9 + 273.15;
}
