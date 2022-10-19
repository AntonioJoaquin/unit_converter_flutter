import 'package:injectable/injectable.dart';

import 'temperature_unit_tytpe.dart';

@lazySingleton
class CelsiusUnitConverter {
  double convert(TemperatureUnitType type, double value) {
    switch (type) {
      case TemperatureUnitType.fahrenheit:
        return _convertFahrenheitToCelsius(value);
      case TemperatureUnitType.kelvin:
        return _convertKelvinToCelsius(value);
      default: // celsius

        return value;
    }
  }

  // From fahrenheit
  double _convertFahrenheitToCelsius(double value) => (value - 32) * 5 / 9;

  // From kelvin
  double _convertKelvinToCelsius(double value) => value - 273.15;
}
