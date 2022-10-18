import 'package:injectable/injectable.dart';

import 'time_unit_type.dart';

@lazySingleton
class MicrosecondUnitConverter {
  double convert(TimeUnitType type, double value) {
    switch (type) {
      case TimeUnitType.century:
        return _convertCenturyToMicrosecond(value);
      case TimeUnitType.decade:
        return _convertDecadeToMicrosecond(value);
      case TimeUnitType.year:
        return _convertYearToMicrosecond(value);
      case TimeUnitType.month:
        return _convertMonthToMicrosecond(value);
      case TimeUnitType.week:
        return _convertWeekToMicrosecond(value);
      case TimeUnitType.day:
        return _convertDayToMicrosecond(value);
      case TimeUnitType.hour:
        return _convertHourToMicrosecond(value);
      case TimeUnitType.minute:
        return _convertMinuteToMicrosecond(value);
      case TimeUnitType.second:
        return _convertSecondToMicrosecond(value);
      case TimeUnitType.millisecond:
        return _convertMillisecondToMicrosecond(value);
      case TimeUnitType.nanosecond:
        return _convertNanosecondToMicrosecond(value);
      default: // microsecond

        return value;
    }
  }

  // From century
  double _convertCenturyToMicrosecond(double value) => value * 3.154e+15;

  // From decade
  double _convertDecadeToMicrosecond(double value) => value * 3.154e+14;

  // From year
  double _convertYearToMicrosecond(double value) => value * 3.154e+13;

  // From month
  double _convertMonthToMicrosecond(double value) => value * 2.628e+12;

  // From week
  double _convertWeekToMicrosecond(double value) => value * 6.048e+11;

  // From day
  double _convertDayToMicrosecond(double value) => value * 8.64e+10;

  // From hour
  double _convertHourToMicrosecond(double value) => value * 3.6e+9;

  // From minute
  double _convertMinuteToMicrosecond(double value) => value * 6e+7;

  // From second
  double _convertSecondToMicrosecond(double value) => value * 1e+6;

  // From millisecond
  double _convertMillisecondToMicrosecond(double value) => value * 1000;

  // From nanosecond
  double _convertNanosecondToMicrosecond(double value) => value / 1000;
}
