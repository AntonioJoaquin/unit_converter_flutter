import 'package:injectable/injectable.dart';

import 'temperature_unit_tytpe.dart';

@lazySingleton
class FahrenheitUnitConverter {
  double convert(TemperatureUnitType type, double value) {
    switch (type) {
      case TemperatureUnitType.celsius:
        return _convertCelsiusToFahrenheit(value);
      case TemperatureUnitType.kelvin:
        return _convertKelvinToFahrenheit(value);
      default: // fahrenheit

        return value;
    }
  }

  // From celsius
  double _convertCelsiusToFahrenheit(double value) => (value * 9 / 5) + 32;

  // From kelvin
  double _convertKelvinToFahrenheit(double value) =>
      (value - 273.15) * 9 / 5 + 32;
}
