enum TimeUnitType {
  century(
    name: 'century',
    toCentury: '',
    toDecade: '/ 10',
    toYear: '/ 100',
    toMonth: '/ 1200',
    toWeek: '/ 5214',
    toDay: '/ 36500',
  ),
  decade(
    name: 'decade',
    toCentury: '* 10',
    toDecade: '',
    toYear: '/ 10',
    toMonth: '/ 120',
    toWeek: '/ 521.4',
    toDay: '/ 3650',
  ),
  year(
    name: 'year',
    toCentury: '* 100',
    toDecade: '* 10',
    toYear: '',
    toMonth: '/ 12',
    toWeek: '/ 52.14',
    toDay: '/ 365',
  ),
  month(
    name: 'month',
    toCentury: '* 1200',
    toDecade: '* 120',
    toYear: '* 12',
    toMonth: '',
    toWeek: '/ 4.345',
    toDay: '/ 30.417',
  ),
  week(
    name: 'week',
    toCentury: '* 5214',
    toDecade: '* 521.4',
    toYear: '* 52.143',
    toMonth: '* 4.345',
    toWeek: '',
    toDay: '/ 7',
  ),
  day(
    name: 'day',
    toCentury: '* 36500',
    toDecade: '* 3650',
    toYear: '* 365',
    toMonth: '* 30.417',
    toWeek: '* 7',
    toDay: '',
  );

  const TimeUnitType({
    required this.name,
    required this.toCentury,
    required this.toDecade,
    required this.toYear,
    required this.toMonth,
    required this.toWeek,
    required this.toDay,
  });

  final String name;
  final String toCentury;
  final String toDecade;
  final String toYear;
  final String toMonth;
  final String toWeek;
  final String toDay;
}
