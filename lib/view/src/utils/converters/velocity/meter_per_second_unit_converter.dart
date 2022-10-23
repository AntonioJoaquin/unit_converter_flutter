import 'package:injectable/injectable.dart';

import 'velocity_unit_type.dart';

@lazySingleton
class MeterPerSecondUnitConverter {
  double convert(VelocityUnitType type, double value) {
    switch (type) {
      case VelocityUnitType.milePerHour:
        return _convertMilePerHourToMeterPerSecond(value);
      case VelocityUnitType.footPerSecond:
        return _convertFootPerSecondToMeterPerSecond(value);
      case VelocityUnitType.kilometerPerHour:
        return _convertKilometerPerHourToMeterPerSecond(value);
      case VelocityUnitType.knot:
        return _convertKnotToMeterPerSecond(value);
      default: // meterPerSecond

        return value;
    }
  }

  // From milePerHour
  double _convertMilePerHourToMeterPerSecond(double value) => value / 2.237;

  // From footPerSecond
  double _convertFootPerSecondToMeterPerSecond(double value) => value / 3.281;

  // From kilometerPerHour
  double _convertKilometerPerHourToMeterPerSecond(double value) => value / 3.6;

  // From knot
  double _convertKnotToMeterPerSecond(double value) => value / 1.944;
}
