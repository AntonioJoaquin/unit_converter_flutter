import 'package:injectable/injectable.dart';

import '../../../../../core/common/custom_notifier.dart';
import '../../../utils/converters/longitude/longitude_unit_type.dart';
import 'longitude_controller_listeners.dart';
import 'longitude_converter.dart';

@injectable
class LongitudeTabManager {
  final LongitudeControllerListeners longitudeControllerListeners;
  final LongitudeConverter _longitudeConverter;

  LongitudeTabManager(
      this.longitudeControllerListeners, this._longitudeConverter);

  // variables
  final CustomValueNotifier<LongitudeUnitType?> _inputTypeFocused =
      CustomValueNotifier(null);
  CustomValueNotifier<LongitudeUnitType?> get inputTypeFocused =>
      _inputTypeFocused;

  final CustomValueNotifier<LongitudeUnitType> _inputTypeFrom =
      CustomValueNotifier(LongitudeUnitType.meter);
  CustomValueNotifier<LongitudeUnitType> get inputTypeFrom => _inputTypeFrom;

  // setters
  void onFocusInput(LongitudeUnitType type) => _inputTypeFocused.value = type;

  void setInputFrom(LongitudeUnitType type) => _inputTypeFrom.value = type;

  // getters
  String getToForm(LongitudeUnitType type) {
    switch (_inputTypeFrom.value) {
      case LongitudeUnitType.kilometer:
        return type.fromKilometer;
      case LongitudeUnitType.meter:
        return type.fromMeter;
      case LongitudeUnitType.centimeter:
        return type.fromCentimeter;
      case LongitudeUnitType.millimeter:
        return type.fromMillimeter;
      case LongitudeUnitType.micrometer:
        return type.fromMicrometer;
      case LongitudeUnitType.nanometer:
        return type.fromNanometer;
      case LongitudeUnitType.mile:
        return type.fromMile;
      case LongitudeUnitType.yard:
        return type.fromYard;
      case LongitudeUnitType.foot:
        return type.fromFoot;
      case LongitudeUnitType.inch:
        return type.fromInch;
      default: // nauticalMile
        return type.fromNauticalMile;
    }
  }

  // actions
  void convert(double value) {
    if (_inputTypeFocused.value == _inputTypeFrom.value) {
      if (_inputTypeFrom.value != LongitudeUnitType.kilometer) {
        longitudeControllerListeners.setKilometerControllerValue(
          _longitudeConverter.kilometerUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != LongitudeUnitType.meter) {
        longitudeControllerListeners.setMeterControllerValue(
          _longitudeConverter.meterUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != LongitudeUnitType.centimeter) {
        longitudeControllerListeners.setCentimeterControllerValue(
          _longitudeConverter.centimeterUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != LongitudeUnitType.millimeter) {
        longitudeControllerListeners.setMillimeterControllerValue(
          _longitudeConverter.millimeterUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != LongitudeUnitType.micrometer) {
        longitudeControllerListeners.setMicrometerControllerValue(
          _longitudeConverter.micrometerUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != LongitudeUnitType.nanometer) {
        longitudeControllerListeners.setNanometerControllerValue(
          _longitudeConverter.nanometerUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != LongitudeUnitType.mile) {
        longitudeControllerListeners.setMileControllerValue(
          _longitudeConverter.mileUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != LongitudeUnitType.yard) {
        longitudeControllerListeners.setYardControllerValue(
          _longitudeConverter.yardUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != LongitudeUnitType.foot) {
        longitudeControllerListeners.setFootControllerValue(
          _longitudeConverter.footUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != LongitudeUnitType.inch) {
        longitudeControllerListeners.setInchControllerValue(
          _longitudeConverter.inchUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != LongitudeUnitType.nauticalMile) {
        longitudeControllerListeners.setNauticalMileControllerValue(
          _longitudeConverter.nauticalMileUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }
    }
  }

  void dispose() {
    _inputTypeFocused.dispose();
    _inputTypeFrom.dispose();
  }
}
