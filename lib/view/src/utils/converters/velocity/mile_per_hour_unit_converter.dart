import 'package:injectable/injectable.dart';

import 'velocity_unit_type.dart';

@lazySingleton
class MilePerHourUnitConverter {
  double convert(VelocityUnitType type, double value) {
    switch (type) {
      case VelocityUnitType.footPerSecond:
        return _convertFootPerSecondToMilePerHour(value);
      case VelocityUnitType.meterPerSecond:
        return _convertMeterPerSecondToMilePerHour(value);
      case VelocityUnitType.kilometerPerHour:
        return _convertKilometerPerHourToMilePerHour(value);
      case VelocityUnitType.knot:
        return _convertKnotToMilePerHour(value);
      default: // milePerHour

        return value;
    }
  }

  // From footPerSecond
  double _convertFootPerSecondToMilePerHour(double value) => value / 1.467;

  // From meterPerSecond
  double _convertMeterPerSecondToMilePerHour(double value) => value * 2.237;

  // From kilometerPerHour
  double _convertKilometerPerHourToMilePerHour(double value) => value / 1.609;

  // From knot
  double _convertKnotToMilePerHour(double value) => value * 1.151;
}
