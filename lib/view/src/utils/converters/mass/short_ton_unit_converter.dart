import 'package:injectable/injectable.dart';

import 'mass_unit_type.dart';

@lazySingleton
class ShortTonUnitConverter {
  double convert(MassUnitType type, double value) {
    switch (type) {
      case MassUnitType.ton:
        return _convertTonToShortTon(value);
      case MassUnitType.kilogram:
        return _convertKilogramToShortTon(value);
      case MassUnitType.gram:
        return _convertGramToShortTon(value);
      case MassUnitType.milligram:
        return _convertMilligramToShortTon(value);
      case MassUnitType.microgram:
        return _convertMicroGramToShortTon(value);
      case MassUnitType.longTon:
        return _convertLongTonToShortTon(value);
      case MassUnitType.stone:
        return _convertStoneToShortTon(value);
      case MassUnitType.pound:
        return _convertPoundToShortTon(value);
      case MassUnitType.ounce:
        return _convertOunceToShortTon(value);
      default: // shortTon

        return value;
    }
  }

  // From ton
  double _convertTonToShortTon(double value) => value * 1.102;

  // From kilogram
  double _convertKilogramToShortTon(double value) => value / 907.2;

  // From gram
  double _convertGramToShortTon(double value) => value / 907200;

  // From milligram
  double _convertMilligramToShortTon(double value) => value / 9.072e+8;

  // From microgram
  double _convertMicroGramToShortTon(double value) => value / 9.072e+11;

  // From longTon
  double _convertLongTonToShortTon(double value) => value * 1.12;

  // From stone
  double _convertStoneToShortTon(double value) => value / 142.9;

  // From pound
  double _convertPoundToShortTon(double value) => value / 2000;

  // From ounce
  double _convertOunceToShortTon(double value) => value / 32000;
}
