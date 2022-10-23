import 'package:injectable/injectable.dart';

import 'mass_unit_type.dart';

@lazySingleton
class KilogramUnitConverter {
  double convert(MassUnitType type, double value) {
    switch (type) {
      case MassUnitType.ton:
        return _convertTonToKilogram(value);
      case MassUnitType.gram:
        return _convertGramToKilogram(value);
      case MassUnitType.milligram:
        return _convertMilligramToKilogram(value);
      case MassUnitType.microgram:
        return _convertMicrogramToKilogram(value);
      case MassUnitType.longTon:
        return _convertLongTonToKilogram(value);
      case MassUnitType.shortTon:
        return _convertShortTonToKilogram(value);
      case MassUnitType.stone:
        return _convertStoneToKilogram(value);
      case MassUnitType.pound:
        return _convertPoundToKilogram(value);
      case MassUnitType.ounce:
        return _convertOunceToKilogram(value);
      default: // kilogram

        return value;
    }
  }

  // From ton
  double _convertTonToKilogram(double value) => value * 1000;

  // From gram
  double _convertGramToKilogram(double value) => value / 1000;

  // From milligram
  double _convertMilligramToKilogram(double value) => value / 1e+6;

  // From microgram
  double _convertMicrogramToKilogram(double value) => value / 1e+9;

  // From longTon
  double _convertLongTonToKilogram(double value) => value * 1016;

  // From shortTon
  double _convertShortTonToKilogram(double value) => value * 907.2;

  // From stone
  double _convertStoneToKilogram(double value) => value * 6.35;

  // From pound
  double _convertPoundToKilogram(double value) => value / 2.205;

  // From ounce
  double _convertOunceToKilogram(double value) => value / 35.274;
}
