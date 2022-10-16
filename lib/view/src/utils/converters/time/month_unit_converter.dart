import 'package:injectable/injectable.dart';

import 'time_unit_type.dart';

@lazySingleton
class MonthUnitConverter {
  double convert(TimeUnitType type, double value) {
    switch (type) {
      case TimeUnitType.century:
        return _convertCenturyToMonth(value);
      case TimeUnitType.decade:
        return _convertDecadeToMonth(value);
      case TimeUnitType.year:
        return _convertYearToMonth(value);
      case TimeUnitType.week:
        return _convertWeekToMonth(value);
      case TimeUnitType.day:
        return _convertDayToMonth(value);
      default: // month

        return value;
    }
  }

  // From century
  double _convertCenturyToMonth(double value) => value * 1200;

  // From decade
  double _convertDecadeToMonth(double value) => value * 120;

  // From year
  double _convertYearToMonth(double value) => value * 12;

  // From week
  double _convertWeekToMonth(double value) => value / 4.345;

  // From day
  double _convertDayToMonth(double value) => value / 30.417;
}
