import 'package:injectable/injectable.dart';

import 'velocity_unit_type.dart';

@lazySingleton
class KnotUnitConverter {
  double convert(VelocityUnitType type, double value) {
    switch (type) {
      case VelocityUnitType.milePerHour:
        return _convertMilePerHourToKnotPerSecond(value);
      case VelocityUnitType.footPerSecond:
        return _convertFootPerSecondToKnotPerSecond(value);
      case VelocityUnitType.meterPerSecond:
        return _convertMeterPerHourToKnotPerSecond(value);
      case VelocityUnitType.kilometerPerHour:
        return _convertKilometerPerHourToKnotPerSecond(value);
      default: // knotPerSecond

        return value;
    }
  }

  // From milePerHour
  double _convertMilePerHourToKnotPerSecond(double value) => value / 1.151;

  // From footPerSecond
  double _convertFootPerSecondToKnotPerSecond(double value) => value / 1.688;

  // From meterPerHour
  double _convertMeterPerHourToKnotPerSecond(double value) => value * 1.944;

  // From kilometer
  double _convertKilometerPerHourToKnotPerSecond(double value) => value / 1.852;
}
