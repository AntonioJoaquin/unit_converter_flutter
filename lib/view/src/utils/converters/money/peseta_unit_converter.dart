import 'package:injectable/injectable.dart';

import 'money_unit_type.dart';

@lazySingleton
class PesetaUnitConverter {
  double convert(MoneyUnitType type, double value) {
    switch (type) {
      case MoneyUnitType.euro:
        return _convertEuroToPeseta(value);
      case MoneyUnitType.dollar:
        return _convertDollarToPeseta(value);
      case MoneyUnitType.yen:
        return _convertYenToPeseta(value);
      default: // peseta

        return value;
    }
  }

  // From euro
  double _convertEuroToPeseta(double value) => value * 166.386;

  // From dollar
  double _convertDollarToPeseta(double value) => value / 166.94;

  // From yen
  double _convertYenToPeseta(double value) => value * 1.13157;
}
