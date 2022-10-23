import 'package:injectable/injectable.dart';

import '../../../utils/converters/velocity/mile_per_hour_unit_converter.dart';
import '../../../utils/converters/velocity/foot_per_second_unit_converter.dart';
import '../../../utils/converters/velocity/meter_per_second_unit_converter.dart';
import '../../../utils/converters/velocity/kilometer_per_hour_unit_converter.dart';
import '../../../utils/converters/velocity/knot_unit_converter.dart';

@lazySingleton
class VelocityConverter {
  final MilePerHourUnitConverter milePerHourUnitConverter;
  final FootPerSecondUnitConverter footPerSecondUnitConverter;
  final KilometerPerHourUnitConverter kilometerPerHourUnitConverter;
  final MeterPerSecondUnitConverter meterPerSecondUnitConverter;
  final KnotUnitConverter knotUnitConverter;

  VelocityConverter(
    this.milePerHourUnitConverter,
    this.footPerSecondUnitConverter,
    this.kilometerPerHourUnitConverter,
    this.meterPerSecondUnitConverter,
    this.knotUnitConverter,
  );
}
