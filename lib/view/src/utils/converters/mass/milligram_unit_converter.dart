import 'package:injectable/injectable.dart';

import 'mass_unit_type.dart';

@lazySingleton
class MilligramUnitConverter {
  double convert(MassUnitType type, double value) {
    switch (type) {
      case MassUnitType.ton:
        return _convertTonToMilligram(value);
      case MassUnitType.kilogram:
        return _convertKilogramToMilligram(value);
      case MassUnitType.gram:
        return _convertGramToMilligram(value);
      case MassUnitType.microgram:
        return _convertMicrogramToMilligram(value);
      case MassUnitType.longTon:
        return _convertLongTonToMilligram(value);
      case MassUnitType.shortTon:
        return _convertShortTonToMilligram(value);
      case MassUnitType.stone:
        return _convertStoneToMilligram(value);
      case MassUnitType.pound:
        return _convertPoundToMilligram(value);
      case MassUnitType.ounce:
        return _convertOunceToMilligram(value);
      default: // milligram

        return value;
    }
  }

  // From ton
  double _convertTonToMilligram(double value) => value * 1e+9;

  // From kilogram
  double _convertKilogramToMilligram(double value) => value * 1e+6;

  // From gram
  double _convertGramToMilligram(double value) => value * 1000;

  // From microgram
  double _convertMicrogramToMilligram(double value) => value / 1000;

  // From longTon
  double _convertLongTonToMilligram(double value) => value * 1.016e+9;

  // From shortTon
  double _convertShortTonToMilligram(double value) => value * 9.072e+8;

  // From stone
  double _convertStoneToMilligram(double value) => value * 6.35e+6;

  // From pound
  double _convertPoundToMilligram(double value) => value * 453600;

  // From ounce
  double _convertOunceToMilligram(double value) => value * 28350;
}
