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
      case TimeUnitType.hour:
        return _convertHourToMonth(value);
      case TimeUnitType.minute:
        return _convertMinuteToMonth(value);
      case TimeUnitType.second:
        return _convertSecondToMonth(value);
      case TimeUnitType.millisecond:
        return _convertMillisecondToMonth(value);
      case TimeUnitType.microsecond:
        return _convertMicrosecondToMonth(value);
      case TimeUnitType.nanosecond:
        return _convertNanosecondToMonth(value);
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

  // From hour
  double _convertHourToMonth(double value) => value / 730;

  // From minute
  double _convertMinuteToMonth(double value) => value / 43800;

  // From second
  double _convertSecondToMonth(double value) => value / 2.628e+6;

  // From millisecond
  double _convertMillisecondToMonth(double value) => value / 2.628e+9;

  // From microsecond
  double _convertMicrosecondToMonth(double value) => value / 2.628e+12;

  // From nanosecond
  double _convertNanosecondToMonth(double value) => value / 2.628e+15;
}
