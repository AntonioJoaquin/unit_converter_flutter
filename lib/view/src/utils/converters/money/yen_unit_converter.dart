import 'package:injectable/injectable.dart';

import 'money_unit_type.dart';

@lazySingleton
class YenUnitConverter {
  double convert(MoneyUnitType type, double value) {
    switch (type) {
      case MoneyUnitType.euro:
        return _convertEuroToYen(value);
      case MoneyUnitType.peseta:
        return _convertPesetaToYen(value);
      case MoneyUnitType.dollar:
        return _convertDollarToYen(value);
      default: // yen

        return value;
    }
  }

  // From euro
  double _convertEuroToYen(double value) => value * 147.02;

  // From peseta
  double _convertPesetaToYen(double value) => value / 1.13157;

  // From dollar
  double _convertDollarToYen(double value) => value * 148.91;
}
