import 'package:injectable/injectable.dart';

import 'mass_unit_type.dart';

@lazySingleton
class StoneUnitConverter {
  double convert(MassUnitType type, double value) {
    switch (type) {
      case MassUnitType.ton:
        return _convertTonToStone(value);
      case MassUnitType.kilogram:
        return _convertKilogramToStone(value);
      case MassUnitType.gram:
        return _convertGramToStone(value);
      case MassUnitType.milligram:
        return _convertMilligramToStone(value);
      case MassUnitType.microgram:
        return _convertMicroGramToStone(value);
      case MassUnitType.longTon:
        return _convertLongTonToStone(value);
      case MassUnitType.shortTon:
        return _convertShortTonToStone(value);
      case MassUnitType.pound:
        return _convertPoundToStone(value);
      case MassUnitType.ounce:
        return _convertOunceToStone(value);
      default: // stone

        return value;
    }
  }

  // From ton
  double _convertTonToStone(double value) => value * 157.5;

  // From kilogram
  double _convertKilogramToStone(double value) => value / 6.35;

  // From gram
  double _convertGramToStone(double value) => value / 6350;

  // From milligram
  double _convertMilligramToStone(double value) => value / 6.35e+6;

  // From microgram
  double _convertMicroGramToStone(double value) => value / 6.35e+9;

  // From longTon
  double _convertLongTonToStone(double value) => value * 160;

  // From shortTon
  double _convertShortTonToStone(double value) => value * 142.9;

  // From pound
  double _convertPoundToStone(double value) => value / 14;

  // From ounce
  double _convertOunceToStone(double value) => value / 224;
}
