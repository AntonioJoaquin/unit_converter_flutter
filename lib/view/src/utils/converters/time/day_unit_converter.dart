import 'package:injectable/injectable.dart';

import 'time_unit_type.dart';

@lazySingleton
class DayUnitConverter {
  double convertToDay(TimeUnitType type, double value) {
    switch (type) {
      case TimeUnitType.century:
        return _convertCenturyToDay(value);
      case TimeUnitType.decade:
        return _convertDecadeToDay(value);
      case TimeUnitType.year:
        return _convertYearToDay(value);
      case TimeUnitType.month:
        return _convertMonthToDay(value);
      case TimeUnitType.week:
        return _convertWeekToDay(value);
      default: // day

        return value;
    }
  }

  // From century
  double _convertCenturyToDay(double value) => value * 36500;

  // From decade
  double _convertDecadeToDay(double value) => value * 3650;

  // From year
  double _convertYearToDay(double value) => value * 365;

  // From month
  double _convertMonthToDay(double value) => value * 30.417;

  // From week
  double _convertWeekToDay(double value) => value * 7;
}
