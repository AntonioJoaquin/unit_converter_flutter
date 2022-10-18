import 'package:injectable/injectable.dart';

import 'time_unit_type.dart';

@lazySingleton
class DecadeUnitConverter {
  double convert(TimeUnitType type, double value) {
    switch (type) {
      case TimeUnitType.century:
        return _convertCenturyToDecade(value);
      case TimeUnitType.year:
        return _convertYearToDecade(value);
      case TimeUnitType.month:
        return _convertMonthToDecade(value);
      case TimeUnitType.week:
        return _convertWeekToDecade(value);
      case TimeUnitType.day:
        return _convertDayToDecade(value);
      case TimeUnitType.hour:
        return _convertHourToDecade(value);
      case TimeUnitType.minute:
        return _convertMinuteToDecade(value);
      case TimeUnitType.second:
        return _convertSecondToDecade(value);
      case TimeUnitType.millisecond:
        return _convertMillisecondToDecade(value);
      case TimeUnitType.microsecond:
        return _convertMicrosecondToDecade(value);
      case TimeUnitType.nanosecond:
        return _convertNanosecondToDecade(value);
      default: // decade

        return value;
    }
  }

  // From century
  double _convertCenturyToDecade(double value) => value * 10;

  // From year
  double _convertYearToDecade(double value) => value / 10;

  // From month
  double _convertMonthToDecade(double value) => value / 120;

  // From week
  double _convertWeekToDecade(double value) => value / 521.4;

  // From day
  double _convertDayToDecade(double value) => value / 3650;

  // From hour
  double _convertHourToDecade(double value) => value / 87600;

  // From minute
  double _convertMinuteToDecade(double value) => value / 5.256e+6;

  // From second
  double _convertSecondToDecade(double value) => value / 3.154e+8;

  // From millisecond
  double _convertMillisecondToDecade(double value) => value / 3.154e+11;

  // From microsecond
  double _convertMicrosecondToDecade(double value) => value / 3.154e+14;

  // From nanosecond
  double _convertNanosecondToDecade(double value) => value / 3.154e+17;
}
