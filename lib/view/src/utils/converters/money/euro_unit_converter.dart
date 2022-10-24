import 'package:injectable/injectable.dart';

import 'money_unit_type.dart';

@lazySingleton
class EuroUnitConverter {
  double convert(MoneyUnitType type, double value) {
    switch (type) {
      case MoneyUnitType.peseta:
        return _convertPesetaToEuro(value);
      case MoneyUnitType.dollar:
        return _convertDollarToEuro(value);
      case MoneyUnitType.yen:
        return _convertYenToEuro(value);
      default: // euro

        return value;
    }
  }

  // From peseta
  double _convertPesetaToEuro(double value) => value / 166.386;

  // From dollar
  double _convertDollarToEuro(double value) => value / 0.99;

  // From yen
  double _convertYenToEuro(double value) => value / 147.02;
}
