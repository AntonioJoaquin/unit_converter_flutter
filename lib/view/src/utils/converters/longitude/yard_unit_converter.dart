import 'package:injectable/injectable.dart';

import 'longitude_unit_type.dart';

@lazySingleton
class YardUnitConverter {
  double convert(LongitudeUnitType type, double value) {
    switch (type) {
      case LongitudeUnitType.kilometer:
        return _convertKilometerToYard(value);
      case LongitudeUnitType.meter:
        return _convertMeterToYard(value);
      case LongitudeUnitType.centimeter:
        return _convertCentimeterToYard(value);
      case LongitudeUnitType.millimeter:
        return _convertMillimeterToYard(value);
      case LongitudeUnitType.micrometer:
        return _convertMicrometerToYard(value);
      case LongitudeUnitType.nanometer:
        return _convertNanometerToYard(value);
      case LongitudeUnitType.mile:
        return _convertMileToYard(value);
      case LongitudeUnitType.foot:
        return _convertFootToYard(value);
      case LongitudeUnitType.inch:
        return _convertInchToYard(value);
      case LongitudeUnitType.nauticalMile:
        return _convertNauticalMileToYard(value);
      default: // yard

        return value;
    }
  }

  // From kilometer
  double _convertKilometerToYard(double value) => value * 1094;

  // From meter
  double _convertMeterToYard(double value) => value * 1.094;

  // From centimeter
  double _convertCentimeterToYard(double value) => value / 91.44;

  // From millimeter
  double _convertMillimeterToYard(double value) => value / 914.4;

  // From micrometer
  double _convertMicrometerToYard(double value) => value / 914400;

  // From nanometer
  double _convertNanometerToYard(double value) => value / 9.144e+8;

  // From mile
  double _convertMileToYard(double value) => value * 1760;

  // From second
  double _convertFootToYard(double value) => value / 3;

  // From inch
  double _convertInchToYard(double value) => value / 36;

  // From nauticalMile
  double _convertNauticalMileToYard(double value) => value * 2025;
}
