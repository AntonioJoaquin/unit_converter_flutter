import 'package:injectable/injectable.dart';

import 'time_unit_type.dart';

@lazySingleton
class WeekUnitConverter {
  double convert(TimeUnitType type, double value) {
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
      case TimeUnitType.hour:
        return _convertHourToWeek(value);
      case TimeUnitType.minute:
        return _convertMinuteToWeek(value);
      case TimeUnitType.second:
        return _convertSecondToWeek(value);
      case TimeUnitType.millisecond:
        return _convertMillisecondToWeek(value);
      case TimeUnitType.microsecond:
        return _convertMicrosecondToWeek(value);
      case TimeUnitType.nanosecond:
        return _convertNanosecondToWeek(value);
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

  // From hour
  double _convertHourToWeek(double value) => value / 168;

  // From minute
  double _convertMinuteToWeek(double value) => value / 10080;

  // From second
  double _convertSecondToWeek(double value) => value / 604800;

  // From millisecond
  double _convertMillisecondToWeek(double value) => value / 6.048e+8;

  // From microsecond
  double _convertMicrosecondToWeek(double value) => value / 6.048e+11;

  // From nanosecond
  double _convertNanosecondToWeek(double value) => value / 6.048e+4;
}
