import 'package:injectable/injectable.dart';

import 'longitude_unit_type.dart';

@lazySingleton
class MileUnitConverter {
  double convert(LongitudeUnitType type, double value) {
    switch (type) {
      case LongitudeUnitType.kilometer:
        return _convertKilometerToMile(value);
      case LongitudeUnitType.meter:
        return _convertMeterToMile(value);
      case LongitudeUnitType.centimeter:
        return _convertCentimeterToMile(value);
      case LongitudeUnitType.millimeter:
        return _convertMillimeterToMile(value);
      case LongitudeUnitType.micrometer:
        return _convertMicrometerToMile(value);
      case LongitudeUnitType.nanometer:
        return _convertNanometerToMile(value);
      case LongitudeUnitType.yard:
        return _convertYardToMile(value);
      case LongitudeUnitType.foot:
        return _convertFootToMile(value);
      case LongitudeUnitType.inch:
        return _convertInchToMile(value);
      case LongitudeUnitType.nauticalMile:
        return _convertNauticalMileToMile(value);
      default: // mile

        return value;
    }
  }

  // From kilometer
  double _convertKilometerToMile(double value) => value / 1.609;

  // From meter
  double _convertMeterToMile(double value) => value / 1609;

  // From centimeter
  double _convertCentimeterToMile(double value) => value / 160900;

  // From millimeter
  double _convertMillimeterToMile(double value) => value / 1.609e+6;

  // From micrometer
  double _convertMicrometerToMile(double value) => value / 1.609e+9;

  // From nanometer
  double _convertNanometerToMile(double value) => value / 1.609e+12;

  // From yard
  double _convertYardToMile(double value) => value / 1760;

  // From foot
  double _convertFootToMile(double value) => value / 5280;

  // From inch
  double _convertInchToMile(double value) => value / 63360;

  // From nauticalMile
  double _convertNauticalMileToMile(double value) => value * 1.151;
}
