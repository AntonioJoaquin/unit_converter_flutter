import 'package:injectable/injectable.dart';

import 'longitude_unit_type.dart';

@lazySingleton
class InchUnitConverter {
  double convert(LongitudeUnitType type, double value) {
    switch (type) {
      case LongitudeUnitType.kilometer:
        return _convertKilometerToInch(value);
      case LongitudeUnitType.meter:
        return _convertMeterToInch(value);
      case LongitudeUnitType.centimeter:
        return _convertCentimeterToInch(value);
      case LongitudeUnitType.millimeter:
        return _convertMillimeterToInch(value);
      case LongitudeUnitType.micrometer:
        return _convertMicrometerToInch(value);
      case LongitudeUnitType.nanometer:
        return _convertNanometerToInch(value);
      case LongitudeUnitType.mile:
        return _convertMileToInch(value);
      case LongitudeUnitType.yard:
        return _convertYardToInch(value);
      case LongitudeUnitType.foot:
        return _convertFootToInch(value);
      case LongitudeUnitType.nauticalMile:
        return _convertNauticalMileToInch(value);
      default: // inch

        return value;
    }
  }

  // From kilometer
  double _convertKilometerToInch(double value) => value * 39370;

  // From meter
  double _convertMeterToInch(double value) => value * 39.37;

  // From centimeter
  double _convertCentimeterToInch(double value) => value / 2.54;

  // From millimeter
  double _convertMillimeterToInch(double value) => value / 25.4;

  // From micrometer
  double _convertMicrometerToInch(double value) => value / 25400;

  // From nanometer
  double _convertNanometerToInch(double value) => value / 2.54e+7;

  // From mile
  double _convertMileToInch(double value) => value * 63360;

  // From yard
  double _convertYardToInch(double value) => value * 36;

  // From foot
  double _convertFootToInch(double value) => value * 12;

  // From nauticalMile
  double _convertNauticalMileToInch(double value) => value * 72910;
}
