enum TimeUnitType {
  century(
    name: 'century',
    fromCentury: '',
    fromDecade: '/ 10',
    fromYear: '/ 100',
    fromMonth: '/ 1200',
    fromWeek: '/ 5214',
    fromDay: '/ 36500',
    fromHour: '/ 876000',
    fromMinute: '/ 5,256e+7',
    fromSecond: '/ 3,154e+9',
    fromMillisecond: '/ 3,154e+12',
    fromMicrosecond: '/ 3,154e+15',
    fromNanosecond: '/ 3,154e+18',
  ),
  decade(
    name: 'decade',
    fromCentury: '* 10',
    fromDecade: '',
    fromYear: '/ 10',
    fromMonth: '/ 120',
    fromWeek: '/ 521.4',
    fromDay: '/ 3650',
    fromHour: '/ 87600',
    fromMinute: '/ 5,256e+6',
    fromSecond: '/ 3,154e+8',
    fromMillisecond: '/ 3,154e+11',
    fromMicrosecond: '/ 3,154e+14',
    fromNanosecond: '/ 3,154e+17',
  ),
  year(
    name: 'year',
    fromCentury: '* 100',
    fromDecade: '* 10',
    fromYear: '',
    fromMonth: '/ 12',
    fromWeek: '/ 52.14',
    fromDay: '/ 365',
    fromHour: '/ 8760',
    fromMinute: '/ 525600',
    fromSecond: '/ 3,154e+7',
    fromMillisecond: '/ 3,154e+10',
    fromMicrosecond: '/ 3,154e+13',
    fromNanosecond: '/ 3,154e+16',
  ),
  month(
    name: 'month',
    fromCentury: '* 1200',
    fromDecade: '* 120',
    fromYear: '* 12',
    fromMonth: '',
    fromWeek: '/ 4.345',
    fromDay: '/ 30.417',
    fromHour: '/ 730',
    fromMinute: '/ 43800',
    fromSecond: '/ 2,628e+6',
    fromMillisecond: '/ 2,628e+9',
    fromMicrosecond: '/ 2,628e+12',
    fromNanosecond: '/ 2,628e+15',
  ),
  week(
    name: 'week',
    fromCentury: '* 5214',
    fromDecade: '* 521.4',
    fromYear: '* 52.143',
    fromMonth: '* 4.345',
    fromWeek: '',
    fromDay: '/ 7',
    fromHour: '/ 168',
    fromMinute: '/ 10080',
    fromSecond: '/ 604800',
    fromMillisecond: '/ 6,048e+8',
    fromMicrosecond: '/ 6,048e+11',
    fromNanosecond: '/ 6,048e+4',
  ),
  day(
    name: 'day',
    fromCentury: '* 36500',
    fromDecade: '* 3650',
    fromYear: '* 365',
    fromMonth: '* 30.417',
    fromWeek: '* 7',
    fromDay: '',
    fromHour: '/ 24',
    fromMinute: '/ 1440',
    fromSecond: '/ 86400',
    fromMillisecond: '/ 8,64e+7',
    fromMicrosecond: '/ 8,64e+10',
    fromNanosecond: '/ 8,64e+13',
  ),
  hour(
    name: 'hour',
    fromCentury: '* 876000',
    fromDecade: '* 87600',
    fromYear: '* 8760',
    fromMonth: '* 730',
    fromWeek: '* 168',
    fromDay: '* 24',
    fromHour: '',
    fromMinute: '/ 60',
    fromSecond: '/ 3600',
    fromMillisecond: '/ 3,6e+6',
    fromMicrosecond: '/ 3,6e+9',
    fromNanosecond: '/ 3,6e+12',
  ),
  minute(
    name: 'minute',
    fromCentury: '* 5,256e+7',
    fromDecade: '* 5,256e+6',
    fromYear: '* 5,256e+5',
    fromMonth: '* 43800',
    fromWeek: '* 10080',
    fromDay: '* 1440',
    fromHour: '* 60',
    fromMinute: '',
    fromSecond: '/ 60',
    fromMillisecond: '/ 3600',
    fromMicrosecond: '/ 3,6e+6',
    fromNanosecond: '/ 3,6e+9',
  ),
  second(
    name: 'second',
    fromCentury: '* 3,154e+9',
    fromDecade: '* 3,154e+8',
    fromYear: '* 3,154e+7',
    fromMonth: '* 2,628e+6',
    fromWeek: '* 604800',
    fromDay: '* 86400',
    fromHour: '* 3600',
    fromMinute: '* 60',
    fromSecond: '',
    fromMillisecond: '/ 1000',
    fromMicrosecond: '/ 1e+6',
    fromNanosecond: '/ 1e+9',
  ),
  millisecond(
    name: 'millisecond',
    fromCentury: '* 3,154e+12',
    fromDecade: '* 3,154e+11',
    fromYear: '* 3,154e+10',
    fromMonth: '* 2,628e+9',
    fromWeek: '* 6,048e+8',
    fromDay: '* 8,64e+7',
    fromHour: '* 3,6e+6',
    fromMinute: '* 60000',
    fromSecond: '* 1000',
    fromMillisecond: '',
    fromMicrosecond: '/ 1000',
    fromNanosecond: '/ 1e+6',
  ),
  microsecond(
    name: 'microsecond',
    fromCentury: '* 3,154e+15',
    fromDecade: '* 3,154e+14',
    fromYear: '* 3,154e+13',
    fromMonth: '* 2,628e+12',
    fromWeek: '* 6,048e+11',
    fromDay: '* 8,64e+10',
    fromHour: '* 3,6e+9',
    fromMinute: '* 6e+7',
    fromSecond: '* 1e+6',
    fromMillisecond: '* 1000',
    fromMicrosecond: '',
    fromNanosecond: '/ 1000',
  ),
  nanosecond(
    name: 'nanosecond',
    fromCentury: '* 3,154e+18',
    fromDecade: '* 3,154e+17',
    fromYear: '* 3,154e+16',
    fromMonth: '* 2,628e+15',
    fromWeek: '* 6,048e+14',
    fromDay: '* 8,64e+13',
    fromHour: '* 3,6e+12',
    fromMinute: '* 6e+10',
    fromSecond: '* 1e+9',
    fromMillisecond: '* 1e+6',
    fromMicrosecond: '* 1000',
    fromNanosecond: '',
  );

  const TimeUnitType({
    required this.name,
    required this.fromCentury,
    required this.fromDecade,
    required this.fromYear,
    required this.fromMonth,
    required this.fromWeek,
    required this.fromDay,
    required this.fromHour,
    required this.fromMinute,
    required this.fromSecond,
    required this.fromMillisecond,
    required this.fromMicrosecond,
    required this.fromNanosecond,
  });

  final String name;
  final String fromCentury;
  final String fromDecade;
  final String fromYear;
  final String fromMonth;
  final String fromWeek;
  final String fromDay;
  final String fromHour;
  final String fromMinute;
  final String fromSecond;
  final String fromMillisecond;
  final String fromMicrosecond;
  final String fromNanosecond;
}
