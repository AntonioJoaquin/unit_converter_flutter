import 'package:injectable/injectable.dart';

import 'longitude_unit_type.dart';

@lazySingleton
class KilometerUnitConverter {
  double convert(LongitudeUnitType type, double value) {
    switch (type) {
      case LongitudeUnitType.meter:
        return _convertMeterToKilometer(value);
      case LongitudeUnitType.centimeter:
        return _convertCentimeterToKilometer(value);
      case LongitudeUnitType.millimeter:
        return _convertMillimeterToKilometer(value);
      case LongitudeUnitType.micrometer:
        return _convertMicrometerToKilometer(value);
      case LongitudeUnitType.nanometer:
        return _convertNanometerToKilometer(value);
      case LongitudeUnitType.mile:
        return _convertMileToKilometer(value);
      case LongitudeUnitType.yard:
        return _convertYardToKilometer(value);
      case LongitudeUnitType.foot:
        return _convertFootToKilometer(value);
      case LongitudeUnitType.inch:
        return _convertInchToKilometer(value);
      case LongitudeUnitType.nauticalMile:
        return _convertNauticalMileToKilometer(value);
      default: // kilometer

        return value;
    }
  }

  // From meter
  double _convertMeterToKilometer(double value) => value / 1000;

  // From centimeter
  double _convertCentimeterToKilometer(double value) => value / 100000;

  // From millimeter
  double _convertMillimeterToKilometer(double value) => value / 1e+6;

  // From micrometer
  double _convertMicrometerToKilometer(double value) => value / 1e+9;

  // From nanometer
  double _convertNanometerToKilometer(double value) => value / 1e+12;

  // From mile
  double _convertMileToKilometer(double value) => value * 1.609;

  // From yard
  double _convertYardToKilometer(double value) => value / 1094;

  // From foot
  double _convertFootToKilometer(double value) => value / 3281;

  // From inch
  double _convertInchToKilometer(double value) => value / 39370;

  // From nauticalMile
  double _convertNauticalMileToKilometer(double value) => value * 1.852;
}
