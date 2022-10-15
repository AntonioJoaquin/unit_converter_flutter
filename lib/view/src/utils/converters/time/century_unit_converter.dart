import 'package:unit_converter/view/src/utils/converters/time/time_unit_type.dart';

class CenturyUnitConverter {
  double convertToCentury(TimeUnitType type, double value) {
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
}
