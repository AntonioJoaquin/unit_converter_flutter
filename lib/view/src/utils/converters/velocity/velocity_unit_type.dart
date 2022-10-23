enum VelocityUnitType {
  milePerHour(
    name: 'milePerHour',
    fromMilePerHour: '',
    fromFootPerSecond: '/ 1.467',
    fromMeterPerSecond: '* 2.237',
    fromKilometerPerHour: '/ 1.609',
    fromKnot: '* 1.151',
  ),
  footPerSecond(
    name: 'footPerSecond',
    fromMilePerHour: '* 1.467',
    fromFootPerSecond: '',
    fromMeterPerSecond: '* 3.281',
    fromKilometerPerHour: '/ 1.097',
    fromKnot: '* 1.688',
  ),
  meterPerSecond(
    name: 'meterPerSecond',
    fromMilePerHour: '/ 2.237',
    fromFootPerSecond: '/ 3.281',
    fromMeterPerSecond: '',
    fromKilometerPerHour: '/ 3.6',
    fromKnot: '/ 1.944',
  ),
  kilometerPerHour(
    name: 'kilometerPerHour',
    fromMilePerHour: '* 1.609',
    fromFootPerSecond: '* 1.097',
    fromMeterPerSecond: '* 3.6',
    fromKilometerPerHour: '',
    fromKnot: '* 1.852',
  ),
  knot(
    name: 'knot',
    fromMilePerHour: '/ 1.151',
    fromFootPerSecond: '/ 1.688',
    fromMeterPerSecond: '* 1.944',
    fromKilometerPerHour: '/ 1.852',
    fromKnot: '',
  );

  const VelocityUnitType({
    required this.name,
    required this.fromMilePerHour,
    required this.fromFootPerSecond,
    required this.fromMeterPerSecond,
    required this.fromKilometerPerHour,
    required this.fromKnot,
  });

  final String name;
  final String fromMilePerHour;
  final String fromFootPerSecond;
  final String fromMeterPerSecond;
  final String fromKilometerPerHour;
  final String fromKnot;
}
