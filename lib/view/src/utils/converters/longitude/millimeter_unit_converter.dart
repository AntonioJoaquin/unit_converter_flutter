import 'package:injectable/injectable.dart';

import 'longitude_unit_type.dart';

@lazySingleton
class MillimeterUnitConverter {
  double convert(LongitudeUnitType type, double value) {
    switch (type) {
      case LongitudeUnitType.kilometer:
        return _convertKilometerToMillimeter(value);
      case LongitudeUnitType.meter:
        return _convertMeterToMillimeter(value);
      case LongitudeUnitType.centimeter:
        return _convertCentimeterToMillimeter(value);
      case LongitudeUnitType.micrometer:
        return _convertMicrometerToMillimeter(value);
      case LongitudeUnitType.nanometer:
        return _convertNanometerToMillimeter(value);
      case LongitudeUnitType.mile:
        return _convertMileToMillimeter(value);
      case LongitudeUnitType.yard:
        return _convertYardToMillimeter(value);
      case LongitudeUnitType.foot:
        return _convertFootToMillimeter(value);
      case LongitudeUnitType.inch:
        return _convertInchToMillimeter(value);
      case LongitudeUnitType.nauticalMile:
        return _convertNauticalMileToMillimeter(value);
      default: // millimeter

        return value;
    }
  }

  // From kilometer
  double _convertKilometerToMillimeter(double value) => value * 1e+6;

  // From centimeter
  double _convertMeterToMillimeter(double value) => value * 1000;

  // From centimeter
  double _convertCentimeterToMillimeter(double value) => value * 10;

  // From micrometer
  double _convertMicrometerToMillimeter(double value) => value / 1000;

  // From nanometer
  double _convertNanometerToMillimeter(double value) => value / 1e+6;

  // From mile
  double _convertMileToMillimeter(double value) => value * 1.609e+6;

  // From yard
  double _convertYardToMillimeter(double value) => value * 914.4;

  // From foot
  double _convertFootToMillimeter(double value) => value * 304.8;

  // From inch
  double _convertInchToMillimeter(double value) => value * 25.4;

  // From nauticalMile
  double _convertNauticalMileToMillimeter(double value) => value * 1.852e+6;
}
