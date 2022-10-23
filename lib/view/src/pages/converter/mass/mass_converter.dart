import 'package:injectable/injectable.dart';

import '../../../utils/converters/mass/ton_unit_converter.dart';
import '../../../utils/converters/mass/kilogram_unit_converter.dart';
import '../../../utils/converters/mass/gram_unit_converter.dart';
import '../../../utils/converters/mass/milligram_unit_converter.dart';
import '../../../utils/converters/mass/microgram_unit_converter.dart';
import '../../../utils/converters/mass/long_ton_unit_converter.dart';
import '../../../utils/converters/mass/short_ton_unit_converter.dart';
import '../../../utils/converters/mass/stone_unit_converter.dart';
import '../../../utils/converters/mass/pound_unit_converter.dart';
import '../../../utils/converters/mass/ounce_unit_converter.dart';

@lazySingleton
class MassConverter {
  final TonUnitConverter tonUnitConverter;
  final KilogramUnitConverter kilogramUnitConverter;
  final GramUnitConverter gramUnitConverter;
  final MilligramUnitConverter milligramUnitConverter;
  final MicrogramUnitConverter microgramUnitConverter;
  final LongTonUnitConverter longTonUnitConverter;
  final ShortTonUnitConverter shortTonUnitConverter;
  final StoneUnitConverter stoneUnitConverter;
  final PoundUnitConverter poundUnitConverter;
  final OunceUnitConverter ounceUnitConverter;

  MassConverter(
    this.tonUnitConverter,
    this.kilogramUnitConverter,
    this.gramUnitConverter,
    this.milligramUnitConverter,
    this.microgramUnitConverter,
    this.longTonUnitConverter,
    this.shortTonUnitConverter,
    this.stoneUnitConverter,
    this.poundUnitConverter,
    this.ounceUnitConverter,
  );
}
