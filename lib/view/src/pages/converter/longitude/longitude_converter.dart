import 'package:injectable/injectable.dart';

import '../../../utils/converters/longitude/kilometer_unit_converter.dart';
import '../../../utils/converters/longitude/centimeter_unit_converter.dart';
import '../../../utils/converters/longitude/foot_unit_converter.dart';
import '../../../utils/converters/longitude/inch_unit_converter.dart';
import '../../../utils/converters/longitude/meter_unit_converter.dart';
import '../../../utils/converters/longitude/micrometer_unit_converter.dart';
import '../../../utils/converters/longitude/mile_unit_converter.dart';
import '../../../utils/converters/longitude/millimeter_unit_converter.dart';
import '../../../utils/converters/longitude/nanometer_unit_converter.dart';
import '../../../utils/converters/longitude/nautical_mile_unit_converter.dart';
import '../../../utils/converters/longitude/yard_unit_converter.dart';

@lazySingleton
class LongitudeConverter {
  final KilometerUnitConverter kilometerUnitConverter;
  final MeterUnitConverter meterUnitConverter;
  final CentimeterUnitConverter centimeterUnitConverter;
  final MillimeterUnitConverter millimeterUnitConverter;
  final MicrometerUnitConverter micrometerUnitConverter;
  final NanometerUnitConverter nanometerUnitConverter;
  final MileUnitConverter mileUnitConverter;
  final YardUnitConverter yardUnitConverter;
  final FootUnitConverter footUnitConverter;
  final InchUnitConverter inchUnitConverter;
  final NauticalMileUnitConverter nauticalMileUnitConverter;

  LongitudeConverter(
    this.kilometerUnitConverter,
    this.meterUnitConverter,
    this.centimeterUnitConverter,
    this.millimeterUnitConverter,
    this.micrometerUnitConverter,
    this.nanometerUnitConverter,
    this.mileUnitConverter,
    this.yardUnitConverter,
    this.footUnitConverter,
    this.inchUnitConverter,
    this.nauticalMileUnitConverter,
  );
}
