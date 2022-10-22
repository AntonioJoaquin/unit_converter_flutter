import 'package:injectable/injectable.dart';

import 'longitude_unit_type.dart';

@lazySingleton
class NauticalMileUnitConverter {
  double convert(LongitudeUnitType type, double value) {
    switch (type) {
      case LongitudeUnitType.kilometer:
        return _convertKilometerToNauticalMile(value);
      case LongitudeUnitType.meter:
        return _convertMeterToNauticalMile(value);
      case LongitudeUnitType.centimeter:
        return _convertCentimeterToNauticalMile(value);
      case LongitudeUnitType.millimeter:
        return _convertMillimeterToNauticalMile(value);
      case LongitudeUnitType.micrometer:
        return _convertMicrometerToNauticalMile(value);
      case LongitudeUnitType.nanometer:
        return _convertNanometerToNauticalMile(value);
      case LongitudeUnitType.mile:
        return _convertMileToNauticalMile(value);
      case LongitudeUnitType.yard:
        return _convertYardToNauticalMile(value);
      case LongitudeUnitType.foot:
        return _convertFootToNauticalMile(value);
      case LongitudeUnitType.inch:
        return _convertInchToNauticalMile(value);
      default: // nauticalMile

        return value;
    }
  }

  // From kilometer
  double _convertKilometerToNauticalMile(double value) => value / 1.852;

  // From meter
  double _convertMeterToNauticalMile(double value) => value / 1852;

  // From centimeter
  double _convertCentimeterToNauticalMile(double value) => value / 185200;

  // From millimeter
  double _convertMillimeterToNauticalMile(double value) => value / 1.852e+6;

  // From micrometer
  double _convertMicrometerToNauticalMile(double value) => value / 1.852e+9;

  // From nanometer
  double _convertNanometerToNauticalMile(double value) => value / 1.852e+12;

  // From mile
  double _convertMileToNauticalMile(double value) => value / 1.151;

  // From yard
  double _convertYardToNauticalMile(double value) => value / 2025;

  // From foot
  double _convertFootToNauticalMile(double value) => value / 6076;

  // From inch
  double _convertInchToNauticalMile(double value) => value / 72910;
}
