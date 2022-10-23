import 'package:injectable/injectable.dart';

import 'mass_unit_type.dart';

@lazySingleton
class MicrogramUnitConverter {
  double convert(MassUnitType type, double value) {
    switch (type) {
      case MassUnitType.ton:
        return _convertTonToMicrogram(value);
      case MassUnitType.kilogram:
        return _convertKilogramToMicrogram(value);
      case MassUnitType.gram:
        return _convertGramToMicrogram(value);
      case MassUnitType.milligram:
        return _convertMilligramToMicrogram(value);
      case MassUnitType.longTon:
        return _convertLongTonToMicrogram(value);
      case MassUnitType.shortTon:
        return _convertShortTonToMicrogram(value);
      case MassUnitType.stone:
        return _convertStoneToMicrogram(value);
      case MassUnitType.pound:
        return _convertPoundToMicrogram(value);
      case MassUnitType.ounce:
        return _convertOunceToMicrogram(value);
      default: // microgram

        return value;
    }
  }

  // From ton
  double _convertTonToMicrogram(double value) => value * 1e+12;

  // From kilogram
  double _convertKilogramToMicrogram(double value) => value * 1e+9;

  // From gram
  double _convertGramToMicrogram(double value) => value * 1e+6;

  // From milligram
  double _convertMilligramToMicrogram(double value) => value * 1000;

  // From longTon
  double _convertLongTonToMicrogram(double value) => value * 1.016e+12;

  // From shortTon
  double _convertShortTonToMicrogram(double value) => value * 9.072e+11;

  // From stone
  double _convertStoneToMicrogram(double value) => value * 6.35e+9;

  // From pound
  double _convertPoundToMicrogram(double value) => value * 4.536e+8;

  // From ounce
  double _convertOunceToMicrogram(double value) => value * 2.835e+7;
}
