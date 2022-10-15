import 'package:injectable/injectable.dart';

import 'time_unit_type.dart';

@lazySingleton
class WeekUnitConverter {
  double convertToWeek(TimeUnitType type, double value) {
    switch (type) {
      case TimeUnitType.century:
        return _convertCenturyToWeek(value);
      case TimeUnitType.decade:
        return _convertDecadeToWeek(value);
      case TimeUnitType.year:
        return _convertYearToWeek(value);
      case TimeUnitType.month:
        return _convertMonthToWeek(value);
      case TimeUnitType.day:
        return _convertDayToWeek(value);
      default: // week

        return value;
    }
  }

  // From century
  double _convertCenturyToWeek(double value) => value * 5214;

  // From decade
  double _convertDecadeToWeek(double value) => value * 521.4;

  // From year
  double _convertYearToWeek(double value) => value * 52.143;

  // From month
  double _convertMonthToWeek(double value) => value * 4.345;

  // From day
  double _convertDayToWeek(double value) => value / 7;
}
