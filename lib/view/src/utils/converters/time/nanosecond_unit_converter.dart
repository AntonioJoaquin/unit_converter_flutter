import 'package:injectable/injectable.dart';

import 'time_unit_type.dart';

@lazySingleton
class NanosecondUnitConverter {
  double convert(TimeUnitType type, double value) {
    switch (type) {
      case TimeUnitType.century:
        return _convertCenturyToNanosecond(value);
      case TimeUnitType.decade:
        return _convertDecadeToNanosecond(value);
      case TimeUnitType.year:
        return _convertYearToNanosecond(value);
      case TimeUnitType.month:
        return _convertMonthToNanosecond(value);
      case TimeUnitType.week:
        return _convertWeekToNanosecond(value);
      case TimeUnitType.day:
        return _convertDayToNanosecond(value);
      case TimeUnitType.hour:
        return _convertHourToNanosecond(value);
      case TimeUnitType.minute:
        return _convertMinuteToNanosecond(value);
      case TimeUnitType.second:
        return _convertSecondToNanosecond(value);
      case TimeUnitType.millisecond:
        return _convertMillisecondToNanosecond(value);
      case TimeUnitType.microsecond:
        return _convertMicrosecondToNanosecond(value);
      default: // nanosecond

        return value;
    }
  }

  // From century
  double _convertCenturyToNanosecond(double value) => value * 3.154e+18;

  // From decade
  double _convertDecadeToNanosecond(double value) => value * 3.154e+17;

  // From year
  double _convertYearToNanosecond(double value) => value * 3.154e+16;

  // From month
  double _convertMonthToNanosecond(double value) => value * 2.628e+15;

  // From week
  double _convertWeekToNanosecond(double value) => value * 6.048e+14;

  // From day
  double _convertDayToNanosecond(double value) => value * 8.64e+13;

  // From hour
  double _convertHourToNanosecond(double value) => value * 3.6e+12;

  // From minute
  double _convertMinuteToNanosecond(double value) => value * 6e+10;

  // From second
  double _convertSecondToNanosecond(double value) => value * 1e+9;

  // From millisecond
  double _convertMillisecondToNanosecond(double value) => value * 1e+6;

  // From microsecond
  double _convertMicrosecondToNanosecond(double value) => value * 1000;
}
