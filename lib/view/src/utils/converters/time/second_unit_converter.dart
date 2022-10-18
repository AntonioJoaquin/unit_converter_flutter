import 'package:injectable/injectable.dart';

import 'time_unit_type.dart';

@lazySingleton
class SecondUnitConverter {
  double convert(TimeUnitType type, double value) {
    switch (type) {
      case TimeUnitType.century:
        return _convertCenturyToSecond(value);
      case TimeUnitType.decade:
        return _convertDecadeToSecond(value);
      case TimeUnitType.year:
        return _convertYearToSecond(value);
      case TimeUnitType.month:
        return _convertMonthToSecond(value);
      case TimeUnitType.week:
        return _convertWeekToSecond(value);
      case TimeUnitType.day:
        return _convertDayToSecond(value);
      case TimeUnitType.hour:
        return _convertHourToSecond(value);
      case TimeUnitType.minute:
        return _convertMinuteToSecond(value);
      case TimeUnitType.millisecond:
        return _convertMillisecondToSecond(value);
      case TimeUnitType.microsecond:
        return _convertMicrosecondToSecond(value);
      case TimeUnitType.nanosecond:
        return _convertNanosecondToSecond(value);
      default: // second

        return value;
    }
  }

  // From century
  double _convertCenturyToSecond(double value) => value * 3.154e+9;

  // From decade
  double _convertDecadeToSecond(double value) => value * 3.154e+8;

  // From year
  double _convertYearToSecond(double value) => value * 3.154e+7;

  // From month
  double _convertMonthToSecond(double value) => value * 2.628e+6;

  // From week
  double _convertWeekToSecond(double value) => value * 604800;

  // From day
  double _convertDayToSecond(double value) => value * 86400;

  // From hour
  double _convertHourToSecond(double value) => value * 3600;

  // From minute
  double _convertMinuteToSecond(double value) => value * 60;

  // From millisecond
  double _convertMillisecondToSecond(double value) => value / 1000;

  // From microsecond
  double _convertMicrosecondToSecond(double value) => value / 1e+6;

  // From nanosecond
  double _convertNanosecondToSecond(double value) => value / 1e+9;
}
