enum MoneyUnitType {
  euro(
    name: 'euro',
    fromEuro: '',
    fromPeseta: '/ 166.386',
    fromDollar: '/ 0.99',
    fromYen: '/ 147.02',
  ),
  peseta(
    name: 'peseta',
    fromEuro: '* 166.386',
    fromPeseta: '',
    fromDollar: '/ 166.94',
    fromYen: '* 1.13157',
  ),
  dollar(
    name: 'dollar',
    fromEuro: '* 0.99',
    fromPeseta: '* 166.94',
    fromDollar: '',
    fromYen: '/ 148.91',
  ),
  yen(
    name: 'yen',
    fromEuro: '* 147.02',
    fromPeseta: '/ 1.13157',
    fromDollar: '* 148.91',
    fromYen: '',
  );

  const MoneyUnitType({
    required this.name,
    required this.fromEuro,
    required this.fromPeseta,
    required this.fromDollar,
    required this.fromYen,
  });

  final String name;
  final String fromEuro;
  final String fromPeseta;
  final String fromDollar;
  final String fromYen;
}
