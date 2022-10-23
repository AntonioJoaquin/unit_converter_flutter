import 'package:injectable/injectable.dart';

import 'mass_unit_type.dart';

@lazySingleton
class TonUnitConverter {
  double convert(MassUnitType type, double value) {
    switch (type) {
      case MassUnitType.kilogram:
        return _convertKilogramToTon(value);
      case MassUnitType.gram:
        return _convertGramToTon(value);
      case MassUnitType.milligram:
        return _convertMilligramToTon(value);
      case MassUnitType.microgram:
        return _convertMicrogramToTon(value);
      case MassUnitType.longTon:
        return _convertLongTonToTon(value);
      case MassUnitType.shortTon:
        return _convertShortTonToTon(value);
      case MassUnitType.stone:
        return _convertStoneToTon(value);
      case MassUnitType.pound:
        return _convertPoundToTon(value);
      case MassUnitType.ounce:
        return _convertOunceToTon(value);
      default: // ton

        return value;
    }
  }

  // From kilogram
  double _convertKilogramToTon(double value) => value / 1000;

  // From gram
  double _convertGramToTon(double value) => value / 1e+6;

  // From milligram
  double _convertMilligramToTon(double value) => value / 1e+9;

  // From microgram
  double _convertMicrogramToTon(double value) => value / 1e+12;

  // From longTon
  double _convertLongTonToTon(double value) => value * 1.016;

  // From shortTon
  double _convertShortTonToTon(double value) => value / 1.102;

  // From stone
  double _convertStoneToTon(double value) => value / 157.5;

  // From pound
  double _convertPoundToTon(double value) => value / 2205;

  // From ounce
  double _convertOunceToTon(double value) => value / 35270;
}
