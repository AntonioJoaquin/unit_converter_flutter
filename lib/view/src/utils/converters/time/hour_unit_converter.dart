import 'package:injectable/injectable.dart';

import 'time_unit_type.dart';

@lazySingleton
class HourUnitConverter {
  double convert(TimeUnitType type, double value) {
    switch (type) {
      case TimeUnitType.century:
        return _convertCenturyToHour(value);
      case TimeUnitType.decade:
        return _convertDecadeToHour(value);
      case TimeUnitType.year:
        return _convertYearToHour(value);
      case TimeUnitType.month:
        return _convertMonthToHour(value);
      case TimeUnitType.week:
        return _convertWeekToHour(value);
      case TimeUnitType.day:
        return _convertDayToHour(value);
      case TimeUnitType.minute:
        return _convertMinuteToHour(value);
      case TimeUnitType.second:
        return _convertSecondToHour(value);
      case TimeUnitType.millisecond:
        return _convertMillisecondToHour(value);
      case TimeUnitType.microsecond:
        return _convertMicrosecondToHour(value);
      case TimeUnitType.nanosecond:
        return _convertNanosecondToHour(value);
      default: // hour

        return value;
    }
  }

  // From century
  double _convertCenturyToHour(double value) => value * 876000;

  // From decade
  double _convertDecadeToHour(double value) => value * 87600;

  // From year
  double _convertYearToHour(double value) => value * 8760;

  // From month
  double _convertMonthToHour(double value) => value * 730;

  // From week
  double _convertWeekToHour(double value) => value * 168;

  // From day
  double _convertDayToHour(double value) => value * 24;

  // From minute
  double _convertMinuteToHour(double value) => value / 60;

  // From second
  double _convertSecondToHour(double value) => value / 3600;

  // From millisecond
  double _convertMillisecondToHour(double value) => value / 3.6e+6;

  // From microsecond
  double _convertMicrosecondToHour(double value) => value / 3.6e+9;

  // From nanosecond
  double _convertNanosecondToHour(double value) => value / 3.6e+12;
}
