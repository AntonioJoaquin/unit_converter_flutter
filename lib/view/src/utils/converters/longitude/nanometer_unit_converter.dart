import 'package:injectable/injectable.dart';

import 'longitude_unit_type.dart';

@lazySingleton
class NanometerUnitConverter {
  double convert(LongitudeUnitType type, double value) {
    switch (type) {
      case LongitudeUnitType.kilometer:
        return _convertKilometerToNanometer(value);
      case LongitudeUnitType.meter:
        return _convertMeterToNanometer(value);
      case LongitudeUnitType.centimeter:
        return _convertCentimeterToNanometer(value);
      case LongitudeUnitType.millimeter:
        return _convertMillimeterToNanometer(value);
      case LongitudeUnitType.micrometer:
        return _convertMicrometerToNanometer(value);
      case LongitudeUnitType.mile:
        return _convertMileToNanometer(value);
      case LongitudeUnitType.yard:
        return _convertYardToNanometer(value);
      case LongitudeUnitType.foot:
        return _convertFootToNanometer(value);
      case LongitudeUnitType.inch:
        return _convertInchToNanometer(value);
      case LongitudeUnitType.nauticalMile:
        return _convertNauticalMileToNanometer(value);
      default: // nanometer

        return value;
    }
  }

  // From kilometer
  double _convertKilometerToNanometer(double value) => value * 1e+12;

  // From meter
  double _convertMeterToNanometer(double value) => value * 1e+9;

  // From centimeter
  double _convertCentimeterToNanometer(double value) => value * 1e+7;

  // From millimeter
  double _convertMillimeterToNanometer(double value) => value * 1e+6;

  // From micrometer
  double _convertMicrometerToNanometer(double value) => value * 1000;

  // From mile
  double _convertMileToNanometer(double value) => value * 1.609e+12;

  // From yard
  double _convertYardToNanometer(double value) => value * 9.144e+8;

  // From foot
  double _convertFootToNanometer(double value) => value * 3.048e+8;

  // From inch
  double _convertInchToNanometer(double value) => value * 2.54e+7;

  // From nauticalMile
  double _convertNauticalMileToNanometer(double value) => value * 1.852e+12;
}
