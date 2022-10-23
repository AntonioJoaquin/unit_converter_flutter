import 'package:injectable/injectable.dart';

import 'mass_unit_type.dart';

@lazySingleton
class OunceUnitConverter {
  double convert(MassUnitType type, double value) {
    switch (type) {
      case MassUnitType.ton:
        return _convertTonToOunce(value);
      case MassUnitType.kilogram:
        return _convertKilogramToOunce(value);
      case MassUnitType.gram:
        return _convertGramToOunce(value);
      case MassUnitType.milligram:
        return _convertMilligramToOunce(value);
      case MassUnitType.microgram:
        return _convertMicroGramToOunce(value);
      case MassUnitType.longTon:
        return _convertLongTonToOunce(value);
      case MassUnitType.shortTon:
        return _convertShortTonToOunce(value);
      case MassUnitType.stone:
        return _convertStoneToOunce(value);
      case MassUnitType.pound:
        return _convertPoundToOunce(value);
      default: // ounce

        return value;
    }
  }

  // From ton
  double _convertTonToOunce(double value) => value * 35270;

  // From kilogram
  double _convertKilogramToOunce(double value) => value * 35.274;

  // From gram
  double _convertGramToOunce(double value) => value / 28.35;

  // From milligram
  double _convertMilligramToOunce(double value) => value / 28350;

  // From microgram
  double _convertMicroGramToOunce(double value) => value / 2.835e+7;

  // From longTon
  double _convertLongTonToOunce(double value) => value * 35840;

  // From shortTon
  double _convertShortTonToOunce(double value) => value * 32000;

  // From stone
  double _convertStoneToOunce(double value) => value * 224;

  // From pound
  double _convertPoundToOunce(double value) => value * 16;
}
