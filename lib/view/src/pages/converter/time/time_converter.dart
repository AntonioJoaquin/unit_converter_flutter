import 'package:injectable/injectable.dart';

import '../../../utils/converters/time/century_unit_converter.dart';
import '../../../utils/converters/time/day_unit_converter.dart';
import '../../../utils/converters/time/decade_unit_converter.dart';
import '../../../utils/converters/time/hour_unit_converter.dart';
import '../../../utils/converters/time/microsecond_unit_converter.dart';
import '../../../utils/converters/time/millisecond_unit_converter.dart';
import '../../../utils/converters/time/minute_unit_converter.dart';
import '../../../utils/converters/time/month_unit_converter.dart';
import '../../../utils/converters/time/nanosecond_unit_converter.dart';
import '../../../utils/converters/time/second_unit_converter.dart';
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
  final HourUnitConverter hourUnitConverter;
  final MinuteUnitConverter minuteUnitConverter;
  final SecondUnitConverter secondUnitConverter;
  final MillisecondUnitConverter millisecondUnitConverter;
  final MicrosecondUnitConverter microsecondUnitConverter;
  final NanosecondUnitConverter nanosecondUnitConverter;

  TimeConverter(
    this.centuryUnitConverter,
    this.decadeUnitConverter,
    this.yearUnitConverter,
    this.monthUnitConverter,
    this.weekUnitConverter,
    this.dayUnitConverter,
    this.hourUnitConverter,
    this.minuteUnitConverter,
    this.secondUnitConverter,
    this.millisecondUnitConverter,
    this.microsecondUnitConverter,
    this.nanosecondUnitConverter,
  );
}
