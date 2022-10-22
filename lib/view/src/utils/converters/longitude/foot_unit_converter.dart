import 'package:injectable/injectable.dart';

import 'longitude_unit_type.dart';

@lazySingleton
class FootUnitConverter {
  double convert(LongitudeUnitType type, double value) {
    switch (type) {
      case LongitudeUnitType.kilometer:
        return _convertKilometerToFoot(value);
      case LongitudeUnitType.meter:
        return _convertMeterToFoot(value);
      case LongitudeUnitType.centimeter:
        return _convertCentimeterToFoot(value);
      case LongitudeUnitType.millimeter:
        return _convertMillimeterToFoot(value);
      case LongitudeUnitType.micrometer:
        return _convertMicrometerToFoot(value);
      case LongitudeUnitType.nanometer:
        return _convertNanometerToFoot(value);
      case LongitudeUnitType.mile:
        return _convertMileToFoot(value);
      case LongitudeUnitType.yard:
        return _convertYardToFoot(value);
      case LongitudeUnitType.inch:
        return _convertInchToFoot(value);
      case LongitudeUnitType.nauticalMile:
        return _convertNauticalMileToFoot(value);
      default: // foot

        return value;
    }
  }

  // From kilometer
  double _convertKilometerToFoot(double value) => value * 3281;

  // From meter
  double _convertMeterToFoot(double value) => value * 3.281;

  // From centimeter
  double _convertCentimeterToFoot(double value) => value / 30.48;

  // From millimeter
  double _convertMillimeterToFoot(double value) => value / 304.8;

  // From micrometer
  double _convertMicrometerToFoot(double value) => value / 304800;

  // From nanometer
  double _convertNanometerToFoot(double value) => value / 3.048e+8;

  // From mile
  double _convertMileToFoot(double value) => value * 5280;

  // From yard
  double _convertYardToFoot(double value) => value * 3;

  // From inch
  double _convertInchToFoot(double value) => value / 12;

  // From nauticalMile
  double _convertNauticalMileToFoot(double value) => value * 6076;
}
