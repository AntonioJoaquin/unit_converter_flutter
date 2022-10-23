import 'package:injectable/injectable.dart';

import 'velocity_unit_type.dart';

@lazySingleton
class KilometerPerHourUnitConverter {
  double convert(VelocityUnitType type, double value) {
    switch (type) {
      case VelocityUnitType.milePerHour:
        return _convertMilePerHourToKilometerPerSecond(value);
      case VelocityUnitType.footPerSecond:
        return _convertFootPerSecondToKilometerPerSecond(value);
      case VelocityUnitType.meterPerSecond:
        return _convertMeterPerHourToKilometerPerSecond(value);
      case VelocityUnitType.knot:
        return _convertKnotToKilometerPerSecond(value);
      default: // kilometerPerSecond

        return value;
    }
  }

  // From milePerHour
  double _convertMilePerHourToKilometerPerSecond(double value) => value * 1.609;

  // From footPerSecond
  double _convertFootPerSecondToKilometerPerSecond(double value) =>
      value * 1.097;

  // From meterPerHour
  double _convertMeterPerHourToKilometerPerSecond(double value) => value * 3.6;

  // From knot
  double _convertKnotToKilometerPerSecond(double value) => value * 1.852;
}
