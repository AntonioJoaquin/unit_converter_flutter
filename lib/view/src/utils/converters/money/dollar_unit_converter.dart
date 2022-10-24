import 'package:injectable/injectable.dart';

import 'money_unit_type.dart';

@lazySingleton
class DollarUnitConverter {
  double convert(MoneyUnitType type, double value) {
    switch (type) {
      case MoneyUnitType.euro:
        return _convertEuroToDollar(value);
      case MoneyUnitType.peseta:
        return _convertPesetaToDollar(value);
      case MoneyUnitType.yen:
        return _convertYenToDollar(value);
      default: // dollar

        return value;
    }
  }

  // From euro
  double _convertEuroToDollar(double value) => value * .99;

  // From peseta
  double _convertPesetaToDollar(double value) => value * 166.94;

  // From yen
  double _convertYenToDollar(double value) => value / 148.91;
}
