import 'package:injectable/injectable.dart';

import 'time_unit_type.dart';

@lazySingleton
class CenturyUnitConverter {
  double convert(TimeUnitType type, double value) {
    switch (type) {
      case TimeUnitType.decade:
        return _convertDecadeToCentury(value);
      case TimeUnitType.year:
        return _convertYearToCentury(value);
      case TimeUnitType.month:
        return _convertMonthToCentury(value);
      case TimeUnitType.week:
        return _convertWeekToCentury(value);
      case TimeUnitType.day:
        return _convertDayToCentury(value);
      case TimeUnitType.hour:
        return _convertHourToCentury(value);
      case TimeUnitType.minute:
        return _convertMinuteToCentury(value);
      case TimeUnitType.second:
        return _convertSecondToCentury(value);
      case TimeUnitType.millisecond:
        return _convertMillisecondToCentury(value);
      case TimeUnitType.microsecond:
        return _convertMicrosecondToCentury(value);
      case TimeUnitType.nanosecond:
        return _convertNanosecondToCentury(value);
      default: // century

        return value;
    }
  }

  // From decade
  double _convertDecadeToCentury(double value) => value / 10;

  // From year
  double _convertYearToCentury(double value) => value / 100;

  // From month
  double _convertMonthToCentury(double value) => value / 1200;

  // From week
  double _convertWeekToCentury(double value) => value / 5214;

  // From day
  double _convertDayToCentury(double value) => value / 36500;

  // From hour
  double _convertHourToCentury(double value) => value / 876000;

  // From minute
  double _convertMinuteToCentury(double value) => value / 5.256e+7;

  // From second
  double _convertSecondToCentury(double value) => value / 3.154e+9;

  // From millisecond
  double _convertMillisecondToCentury(double value) => value / 3.154e+12;

  // From microsecond
  double _convertMicrosecondToCentury(double value) => value / 3.154e+15;

  // From nanosecond
  double _convertNanosecondToCentury(double value) => value / 3.154e+18;
}
