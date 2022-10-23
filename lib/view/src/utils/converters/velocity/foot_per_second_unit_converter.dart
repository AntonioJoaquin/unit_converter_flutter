import 'package:injectable/injectable.dart';

import 'velocity_unit_type.dart';

@lazySingleton
class FootPerSecondUnitConverter {
  double convert(VelocityUnitType type, double value) {
    switch (type) {
      case VelocityUnitType.milePerHour:
        return _convertMilePerHourToFootPerSecond(value);
      case VelocityUnitType.meterPerSecond:
        return _convertMeterPerSecondToFootPerSecond(value);
      case VelocityUnitType.kilometerPerHour:
        return _convertKilometerPerHourToFootPerSecond(value);
      case VelocityUnitType.knot:
        return _convertKnotToFootPerSecond(value);
      default: // footPerSecond

        return value;
    }
  }

  // From milePerHour
  double _convertMilePerHourToFootPerSecond(double value) => value * 1.467;

  // From meterPerSecond
  double _convertMeterPerSecondToFootPerSecond(double value) => value * 3.281;

  // From kilometerPerHour
  double _convertKilometerPerHourToFootPerSecond(double value) => value / 1.097;

  // From knot
  double _convertKnotToFootPerSecond(double value) => value * 1.688;
}
