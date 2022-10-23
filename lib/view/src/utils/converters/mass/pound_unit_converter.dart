import 'package:injectable/injectable.dart';

import 'mass_unit_type.dart';

@lazySingleton
class PoundUnitConverter {
  double convert(MassUnitType type, double value) {
    switch (type) {
      case MassUnitType.ton:
        return _convertTonToPound(value);
      case MassUnitType.kilogram:
        return _convertKilogramToPound(value);
      case MassUnitType.gram:
        return _convertGramToPound(value);
      case MassUnitType.milligram:
        return _convertMilligramToPound(value);
      case MassUnitType.microgram:
        return _convertMicroGramToPound(value);
      case MassUnitType.longTon:
        return _convertLongTonToPound(value);
      case MassUnitType.shortTon:
        return _convertShortTonToPound(value);
      case MassUnitType.stone:
        return _convertStoneToPound(value);
      case MassUnitType.ounce:
        return _convertOunceToPound(value);
      default: // pound

        return value;
    }
  }

  // From ton
  double _convertTonToPound(double value) => value * 2205;

  // From kilogram
  double _convertKilogramToPound(double value) => value * 2.205;

  // From gram
  double _convertGramToPound(double value) => value / 453.6;

  // From milligram
  double _convertMilligramToPound(double value) => value / 453600;

  // From microgram
  double _convertMicroGramToPound(double value) => value / 4.536e+8;

  // From longTon
  double _convertLongTonToPound(double value) => value * 2240;

  // From shortTon
  double _convertShortTonToPound(double value) => value * 2000;

  // From stone
  double _convertStoneToPound(double value) => value * 14;

  // From ounce
  double _convertOunceToPound(double value) => value / 16;
}
