import 'package:injectable/injectable.dart';

import 'longitude_unit_type.dart';

@lazySingleton
class MicrometerUnitConverter {
  double convert(LongitudeUnitType type, double value) {
    switch (type) {
      case LongitudeUnitType.kilometer:
        return _convertKilometerToMicrometer(value);
      case LongitudeUnitType.meter:
        return _convertMeterToMicrometer(value);
      case LongitudeUnitType.centimeter:
        return _convertCentimeterToMicrometer(value);
      case LongitudeUnitType.millimeter:
        return _convertMillimeterToMicrometer(value);
      case LongitudeUnitType.nanometer:
        return _convertNanometerToMicrometer(value);
      case LongitudeUnitType.mile:
        return _convertMileToMicrometer(value);
      case LongitudeUnitType.yard:
        return _convertYardToMicrometer(value);
      case LongitudeUnitType.foot:
        return _convertFootToMicrometer(value);
      case LongitudeUnitType.inch:
        return _convertInchToMicrometer(value);
      case LongitudeUnitType.nauticalMile:
        return _convertNauticalMileToMicrometer(value);
      default: // micrometer

        return value;
    }
  }

  // From kilometer
  double _convertKilometerToMicrometer(double value) => value * 1e+9;

  // From centimeter
  double _convertMeterToMicrometer(double value) => value * 1e+6;

  // From centimeter
  double _convertCentimeterToMicrometer(double value) => value * 10000;

  // From millimeter
  double _convertMillimeterToMicrometer(double value) => value * 1000;

  // From nanometer
  double _convertNanometerToMicrometer(double value) => value / 1000;

  // From mile
  double _convertMileToMicrometer(double value) => value * 1.609e+9;

  // From yard
  double _convertYardToMicrometer(double value) => value * 914400;

  // From foot
  double _convertFootToMicrometer(double value) => value * 304800;

  // From inch
  double _convertInchToMicrometer(double value) => value * 25400;

  // From nauticalMile
  double _convertNauticalMileToMicrometer(double value) => value * 1.852e+9;
}
