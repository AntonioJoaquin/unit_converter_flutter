import 'package:injectable/injectable.dart';

import 'time_unit_type.dart';

@lazySingleton
class DayUnitConverter {
  double convert(TimeUnitType type, double value) {
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
      case TimeUnitType.hour:
        return _convertHourToDay(value);
      case TimeUnitType.minute:
        return _convertMinuteToDay(value);
      case TimeUnitType.second:
        return _convertSecondToDay(value);
      case TimeUnitType.millisecond:
        return _convertMillisecondToDay(value);
      case TimeUnitType.microsecond:
        return _convertMicrosecondToDay(value);
      case TimeUnitType.nanosecond:
        return _convertNanosecondToDay(value);
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

  // From hour
  double _convertHourToDay(double value) => value / 24;

  // From minute
  double _convertMinuteToDay(double value) => value / 1440;

  // From second
  double _convertSecondToDay(double value) => value / 86400;

  // From millisecond
  double _convertMillisecondToDay(double value) => value / 8.64e+7;

  // From microsecond
  double _convertMicrosecondToDay(double value) => value / 8.64e+10;

  // From nanosecond
  double _convertNanosecondToDay(double value) => value / 8.64e+13;
}
