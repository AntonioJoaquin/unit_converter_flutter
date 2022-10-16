import 'package:injectable/injectable.dart';

import '../../../utils/converters/time/century_unit_converter.dart';
import '../../../utils/converters/time/day_unit_converter.dart';
import '../../../utils/converters/time/decade_unit_converter.dart';
import '../../../utils/converters/time/month_unit_converter.dart';
import '../../../utils/converters/time/week_unit_converter.dart';
import '../../../utils/converters/time/year_unit_converter.dart';

@lazySingleton
class TimeConverter {
  final CenturyUnitConverter centuryUnitConverter;
  final DecadeUnitConverter decadeUnitConverter;
  final YearUnitConverter yearUnitConverter;
  final MonthUnitConverter monthUnitConverter;
  final WeekUnitConverter weekUnitConverter;
  final DayUnitConverter dayUnitConverter;

  TimeConverter(
    this.centuryUnitConverter,
    this.decadeUnitConverter,
    this.yearUnitConverter,
    this.monthUnitConverter,
    this.weekUnitConverter,
    this.dayUnitConverter,
  );
}
