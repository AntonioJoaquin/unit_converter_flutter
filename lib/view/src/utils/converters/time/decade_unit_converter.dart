import 'package:injectable/injectable.dart';

import 'time_unit_type.dart';

@lazySingleton
class DecadeUnitConverter {
  double convert(TimeUnitType type, double value) {
    switch (type) {
      case TimeUnitType.century:
        return _convertCenturyToDecade(value);
      case TimeUnitType.year:
        return _convertYearToDecade(value);
      case TimeUnitType.month:
        return _convertMonthToDecade(value);
      case TimeUnitType.week:
        return _convertWeekToDecade(value);
      case TimeUnitType.day:
        return _convertDayToDecade(value);
      default: // decade

        return value;
    }
  }

  // From century
  double _convertCenturyToDecade(double value) => value * 10;

  // From year
  double _convertYearToDecade(double value) => value / 10;

  // From month
  double _convertMonthToDecade(double value) => value / 120;

  // From week
  double _convertWeekToDecade(double value) => value / 521.4;

  // From day
  double _convertDayToDecade(double value) => value / 3650;
}
