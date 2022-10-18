import 'package:injectable/injectable.dart';

import 'time_unit_type.dart';

@lazySingleton
class MillisecondUnitConverter {
  double convert(TimeUnitType type, double value) {
    switch (type) {
      case TimeUnitType.century:
        return _convertCenturyToMillisecond(value);
      case TimeUnitType.decade:
        return _convertDecadeToMillisecond(value);
      case TimeUnitType.year:
        return _convertYearToMillisecond(value);
      case TimeUnitType.month:
        return _convertMonthToMillisecond(value);
      case TimeUnitType.week:
        return _convertWeekToMillisecond(value);
      case TimeUnitType.day:
        return _convertDayToMillisecond(value);
      case TimeUnitType.hour:
        return _convertHourToMillisecond(value);
      case TimeUnitType.minute:
        return _convertMinuteToMillisecond(value);
      case TimeUnitType.second:
        return _convertSecondToMillisecond(value);
      case TimeUnitType.microsecond:
        return _convertMicrosecondToMillisecond(value);
      case TimeUnitType.nanosecond:
        return _convertNanosecondToMillisecond(value);
      default: // millisecond

        return value;
    }
  }

  // From century
  double _convertCenturyToMillisecond(double value) => value * 3.154e+12;

  // From decade
  double _convertDecadeToMillisecond(double value) => value * 3.154e+11;

  // From year
  double _convertYearToMillisecond(double value) => value * 3.154e+10;

  // From month
  double _convertMonthToMillisecond(double value) => value * 2.628e+9;

  // From week
  double _convertWeekToMillisecond(double value) => value * 6.048e+8;

  // From day
  double _convertDayToMillisecond(double value) => value * 8.64e+7;

  // From hour
  double _convertHourToMillisecond(double value) => value * 3.6e+6;

  // From minute
  double _convertMinuteToMillisecond(double value) => value * 60000;

  // From second
  double _convertSecondToMillisecond(double value) => value * 1000;

  // From microsecond
  double _convertMicrosecondToMillisecond(double value) => value / 1000;

  // From nanosecond
  double _convertNanosecondToMillisecond(double value) => value / 1e+6;
}
