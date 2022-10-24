import 'package:injectable/injectable.dart';

import '../../../utils/converters/money/euro_unit_converter.dart';
import '../../../utils/converters/money/peseta_unit_converter.dart';
import '../../../utils/converters/money/dollar_unit_converter.dart';
import '../../../utils/converters/money/yen_unit_converter.dart';

@lazySingleton
class MoneyConverter {
  final EuroUnitConverter euroUnitConverter;
  final PesetaUnitConverter pesetaUnitConverter;
  final DollarUnitConverter dollarUnitConverter;
  final YenUnitConverter yenUnitConverter;

  MoneyConverter(
    this.euroUnitConverter,
    this.pesetaUnitConverter,
    this.dollarUnitConverter,
    this.yenUnitConverter,
  );
}
