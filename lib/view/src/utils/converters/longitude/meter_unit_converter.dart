import 'package:injectable/injectable.dart';

import 'longitude_unit_type.dart';

@lazySingleton
class MeterUnitConverter {
  double convert(LongitudeUnitType type, double value) {
    switch (type) {
      case LongitudeUnitType.kilometer:
        return _convertKilometerToMeter(value);
      case LongitudeUnitType.centimeter:
        return _convertCentimeterToMeter(value);
      case LongitudeUnitType.millimeter:
        return _convertMillimeterToMeter(value);
      case LongitudeUnitType.micrometer:
        return _convertMicrometerToMeter(value);
      case LongitudeUnitType.nanometer:
        return _convertNanometerToMeter(value);
      case LongitudeUnitType.mile:
        return _convertMileToMeter(value);
      case LongitudeUnitType.yard:
        return _convertYardToMeter(value);
      case LongitudeUnitType.foot:
        return _convertFootToMeter(value);
      case LongitudeUnitType.inch:
        return _convertInchToMeter(value);
      case LongitudeUnitType.nauticalMile:
        return _convertNauticalMileToMeter(value);
      default: // meter

        return value;
    }
  }

  // From kilometer
  double _convertKilometerToMeter(double value) => value * 1000;

  // From centimeter
  double _convertCentimeterToMeter(double value) => value / 100;

  // From millimeter
  double _convertMillimeterToMeter(double value) => value / 1000;

  // From micrometer
  double _convertMicrometerToMeter(double value) => value / 1e+6;

  // From nanometer
  double _convertNanometerToMeter(double value) => value / 1e+9;

  // From mile
  double _convertMileToMeter(double value) => value * 1609;

  // From yard
  double _convertYardToMeter(double value) => value / 1.094;

  // From foot
  double _convertFootToMeter(double value) => value / 3.281;

  // From inch
  double _convertInchToMeter(double value) => value / 39.37;

  // From nauticalMile
  double _convertNauticalMileToMeter(double value) => value * 1852;
}
