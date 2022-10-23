import 'package:injectable/injectable.dart';

import '../../../../../core/common/custom_notifier.dart';
import '../../../utils/converters/velocity/velocity_unit_type.dart';
import 'velocity_controller_listeners.dart';
import 'velocity_converter.dart';

@injectable
class VelocityTabManager {
  final VelocityControllerListeners velocityControllerListeners;
  final VelocityConverter _velocityConverter;

  VelocityTabManager(this.velocityControllerListeners, this._velocityConverter);

  // variables
  final CustomValueNotifier<VelocityUnitType?> _inputTypeFocused =
      CustomValueNotifier(null);
  CustomValueNotifier<VelocityUnitType?> get inputTypeFocused =>
      _inputTypeFocused;

  final CustomValueNotifier<VelocityUnitType> _inputTypeFrom =
      CustomValueNotifier(VelocityUnitType.kilometerPerHour);
  CustomValueNotifier<VelocityUnitType> get inputTypeFrom => _inputTypeFrom;

  // setters
  void onFocusInput(VelocityUnitType type) => _inputTypeFocused.value = type;

  void setInputFrom(VelocityUnitType type) => _inputTypeFrom.value = type;

  // getters
  String getToForm(VelocityUnitType type) {
    switch (_inputTypeFrom.value) {
      case VelocityUnitType.milePerHour:
        return type.fromMilePerHour;
      case VelocityUnitType.footPerSecond:
        return type.fromFootPerSecond;
      case VelocityUnitType.meterPerSecond:
        return type.fromMeterPerSecond;
      case VelocityUnitType.kilometerPerHour:
        return type.fromKilometerPerHour;
      default: // knot
        return type.fromKnot;
    }
  }

  // actions
  void convert(double value) {
    if (_inputTypeFocused.value == _inputTypeFrom.value) {
      if (_inputTypeFrom.value != VelocityUnitType.milePerHour) {
        velocityControllerListeners.setMilePerHourControllerValue(
          _velocityConverter.milePerHourUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != VelocityUnitType.footPerSecond) {
        velocityControllerListeners.setFootPerSecondControllerValue(
          _velocityConverter.footPerSecondUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != VelocityUnitType.meterPerSecond) {
        velocityControllerListeners.setMeterPerSecondControllerValue(
          _velocityConverter.meterPerSecondUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != VelocityUnitType.kilometerPerHour) {
        velocityControllerListeners.setKilometerPerHourControllerValue(
          _velocityConverter.kilometerPerHourUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != VelocityUnitType.knot) {
        velocityControllerListeners.setKnotControllerValue(
          _velocityConverter.knotUnitConverter.convert(
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
