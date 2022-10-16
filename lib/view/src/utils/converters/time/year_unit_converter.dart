import 'package:injectable/injectable.dart';

import 'time_unit_type.dart';

@lazySingleton
class YearUnitConverter {
  double convert(TimeUnitType type, double value) {
    switch (type) {
      case TimeUnitType.century:
        return _convertCenturyToYear(value);
      case TimeUnitType.decade:
        return _convertDecadeToYear(value);
      case TimeUnitType.month:
        return _convertMonthToYear(value);
      case TimeUnitType.week:
        return _convertWeekToYear(value);
      case TimeUnitType.day:
        return _convertDayToYear(value);
      default: // year

        return value;
    }
  }

  // From century
  double _convertCenturyToYear(double value) => value * 100;

  // From decade
  double _convertDecadeToYear(double value) => value * 10;

  // From month
  double _convertMonthToYear(double value) => value / 12;

  // From week
  double _convertWeekToYear(double value) => value / 52.14;

  // From day
  double _convertDayToYear(double value) => value / 365;
}
