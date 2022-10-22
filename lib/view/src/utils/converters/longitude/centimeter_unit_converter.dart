import 'package:injectable/injectable.dart';

import 'longitude_unit_type.dart';

@lazySingleton
class CentimeterUnitConverter {
  double convert(LongitudeUnitType type, double value) {
    switch (type) {
      case LongitudeUnitType.kilometer:
        return _convertKilometerToCentimeter(value);
      case LongitudeUnitType.meter:
        return _convertMeterToCentimeter(value);
      case LongitudeUnitType.millimeter:
        return _convertMillimeterToCentimeter(value);
      case LongitudeUnitType.micrometer:
        return _convertMicrometerToCentimeter(value);
      case LongitudeUnitType.nanometer:
        return _convertNanometerToCentimeter(value);
      case LongitudeUnitType.mile:
        return _convertMileToCentimeter(value);
      case LongitudeUnitType.yard:
        return _convertYardToCentimeter(value);
      case LongitudeUnitType.foot:
        return _convertFootToCentimeter(value);
      case LongitudeUnitType.inch:
        return _convertInchToCentimeter(value);
      case LongitudeUnitType.nauticalMile:
        return _convertNauticalMileToCentimeter(value);
      default: // centimeter

        return value;
    }
  }

  // From kilometer
  double _convertKilometerToCentimeter(double value) => value * 100000;

  // From meter
  double _convertMeterToCentimeter(double value) => value * 100;

  // From millimeter
  double _convertMillimeterToCentimeter(double value) => value / 10;

  // From micrometer
  double _convertMicrometerToCentimeter(double value) => value / 10000;

  // From nanometer
  double _convertNanometerToCentimeter(double value) => value / 1e+7;

  // From mile
  double _convertMileToCentimeter(double value) => value * 160900;

  // From yard
  double _convertYardToCentimeter(double value) => value * 91.44;

  // From foot
  double _convertFootToCentimeter(double value) => value * 30.48;

  // From inch
  double _convertInchToCentimeter(double value) => value * 2.54;

  // From nauticalMile
  double _convertNauticalMileToCentimeter(double value) => value * 185200;
}
