import 'package:injectable/injectable.dart';

import 'mass_unit_type.dart';

@lazySingleton
class LongTonUnitConverter {
  double convert(MassUnitType type, double value) {
    switch (type) {
      case MassUnitType.ton:
        return _convertTonToLongTon(value);
      case MassUnitType.kilogram:
        return _convertKilogramToLongTon(value);
      case MassUnitType.gram:
        return _convertGramToLongTon(value);
      case MassUnitType.milligram:
        return _convertMilligramToLongTon(value);
      case MassUnitType.microgram:
        return _convertMicroGramToLongTon(value);
      case MassUnitType.shortTon:
        return _convertShortTonToLongTon(value);
      case MassUnitType.stone:
        return _convertStoneToLongTon(value);
      case MassUnitType.pound:
        return _convertPoundToLongTon(value);
      case MassUnitType.ounce:
        return _convertOunceToLongTon(value);
      default: // longTon

        return value;
    }
  }

  // From ton
  double _convertTonToLongTon(double value) => value / 1.016;

  // From kilogram
  double _convertKilogramToLongTon(double value) => value / 1016;

  // From gram
  double _convertGramToLongTon(double value) => value / 1.016e+6;

  // From milligram
  double _convertMilligramToLongTon(double value) => value / 1.016e+9;

  // From microgram
  double _convertMicroGramToLongTon(double value) => value / 1.016e+12;

  // From shortTon
  double _convertShortTonToLongTon(double value) => value / 1.12;

  // From stone
  double _convertStoneToLongTon(double value) => value / 160;

  // From pound
  double _convertPoundToLongTon(double value) => value / 2240;

  // From ounce
  double _convertOunceToLongTon(double value) => value / 35840;
}
