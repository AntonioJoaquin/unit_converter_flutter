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
      case TimeUnitType.hour:
        return _convertHourToYear(value);
      case TimeUnitType.minute:
        return _convertMinuteToYear(value);
      case TimeUnitType.second:
        return _convertSecondToYear(value);
      case TimeUnitType.millisecond:
        return _convertMillisecondToYear(value);
      case TimeUnitType.microsecond:
        return _convertMicrosecondToYear(value);
      case TimeUnitType.nanosecond:
        return _convertNanosecondToYear(value);
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

  // From hour
  double _convertHourToYear(double value) => value / 8760;

  // From minute
  double _convertMinuteToYear(double value) => value / 525600;

  // From second
  double _convertSecondToYear(double value) => value / 3.154e+7;

  // From millisecond
  double _convertMillisecondToYear(double value) => value / 3.154e+10;

  // From microsecond
  double _convertMicrosecondToYear(double value) => value / 3.154e+13;

  // From nanosecond
  double _convertNanosecondToYear(double value) => value / 3.154e+16;
}
