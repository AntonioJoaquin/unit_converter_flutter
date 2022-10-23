import 'package:injectable/injectable.dart';

import 'mass_unit_type.dart';

@lazySingleton
class GramUnitConverter {
  double convert(MassUnitType type, double value) {
    switch (type) {
      case MassUnitType.ton:
        return _convertTonToGram(value);
      case MassUnitType.kilogram:
        return _convertKilogramToGram(value);
      case MassUnitType.milligram:
        return _convertMilligramToGram(value);
      case MassUnitType.microgram:
        return _convertMicrogramToGram(value);
      case MassUnitType.longTon:
        return _convertLongTonToGram(value);
      case MassUnitType.shortTon:
        return _convertShortTonToGram(value);
      case MassUnitType.stone:
        return _convertStoneToGram(value);
      case MassUnitType.pound:
        return _convertPoundToGram(value);
      case MassUnitType.ounce:
        return _convertOunceToGram(value);
      default: // gram

        return value;
    }
  }

  // From ton
  double _convertTonToGram(double value) => value * 1e+6;

  // From kilogram
  double _convertKilogramToGram(double value) => value * 1000;

  // From milligram
  double _convertMilligramToGram(double value) => value / 1000;

  // From microgram
  double _convertMicrogramToGram(double value) => value / 1e+6;

  // From longTon
  double _convertLongTonToGram(double value) => value / 1.016e+6;

  // From shortTon
  double _convertShortTonToGram(double value) => value * 907200;

  // From stone
  double _convertStoneToGram(double value) => value * 6350;

  // From pound
  double _convertPoundToGram(double value) => value * 453.6;

  // From ounce
  double _convertOunceToGram(double value) => value * 28.35;
}
