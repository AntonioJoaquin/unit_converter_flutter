import 'package:injectable/injectable.dart';

import 'time_unit_type.dart';

@lazySingleton
class MinuteUnitConverter {
  double convert(TimeUnitType type, double value) {
    switch (type) {
      case TimeUnitType.century:
        return _convertCenturyToMinute(value);
      case TimeUnitType.decade:
        return _convertDecadeToMinute(value);
      case TimeUnitType.year:
        return _convertYearToMinute(value);
      case TimeUnitType.month:
        return _convertMonthToMinute(value);
      case TimeUnitType.week:
        return _convertWeekToMinute(value);
      case TimeUnitType.day:
        return _convertDayToMinute(value);
      case TimeUnitType.hour:
        return _convertHourToMinute(value);
      case TimeUnitType.second:
        return _convertSecondToMinute(value);
      case TimeUnitType.millisecond:
        return _convertMillisecondToMinute(value);
      case TimeUnitType.microsecond:
        return _convertMicrosecondToMinute(value);
      case TimeUnitType.nanosecond:
        return _convertNanosecondToMinute(value);
      default: // minute

        return value;
    }
  }

  // From century
  double _convertCenturyToMinute(double value) => value * 5.256e+7;

  // From decade
  double _convertDecadeToMinute(double value) => value * 5.256e+6;

  // From year
  double _convertYearToMinute(double value) => value * 5.256e+5;

  // From month
  double _convertMonthToMinute(double value) => value * 43800;

  // From week
  double _convertWeekToMinute(double value) => value * 10080;

  // From day
  double _convertDayToMinute(double value) => value * 1440;

  // From hour
  double _convertHourToMinute(double value) => value * 60;

  // From second
  double _convertSecondToMinute(double value) => value / 60;

  // From millisecond
  double _convertMillisecondToMinute(double value) => value / 3600;

  // From microsecond
  double _convertMicrosecondToMinute(double value) => value / 3.6e+6;

  // From nanosecond
  double _convertNanosecondToMinute(double value) => value / 3.6e+9;
}
