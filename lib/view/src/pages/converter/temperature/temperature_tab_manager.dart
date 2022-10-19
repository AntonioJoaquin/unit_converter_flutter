import 'package:injectable/injectable.dart';

import '../../../../../core/common/custom_notifier.dart';
import '../../../utils/converters/temperature/temperature_unit_tytpe.dart';
import 'temperature_controller_listeners.dart';
import 'temperature_converter.dart';

@injectable
class TemperatureTabManager {
  final TemperatureControllerListeners temperatureControllerListeners;
  final TemperatureConverter _temperatureConverter;

  TemperatureTabManager(
      this.temperatureControllerListeners, this._temperatureConverter);

  // variables
  final CustomValueNotifier<TemperatureUnitType?> _inputTypeFocused =
      CustomValueNotifier(null);
  CustomValueNotifier<TemperatureUnitType?> get inputTypeFocused =>
      _inputTypeFocused;

  final CustomValueNotifier<TemperatureUnitType> _inputTypeFrom =
      CustomValueNotifier(TemperatureUnitType.celsius);
  CustomValueNotifier<TemperatureUnitType> get inputTypeFrom => _inputTypeFrom;

  // setters
  void onFocusInput(TemperatureUnitType type) => _inputTypeFocused.value = type;

  void setInputFrom(TemperatureUnitType type) => _inputTypeFrom.value = type;

  // getters
  String getToForm(TemperatureUnitType type) {
    switch (_inputTypeFrom.value) {
      case TemperatureUnitType.celsius:
        return type.fromCelsius;
      case TemperatureUnitType.fahrenheit:
        return type.fromFahrenheit;
      default: // kelvin
        return type.fromKelvin;
    }
  }

  // actions
  void convert(double value) {
    if (_inputTypeFocused.value == _inputTypeFrom.value) {
      if (_inputTypeFrom.value != TemperatureUnitType.celsius) {
        temperatureControllerListeners.setCelsiusControllerValue(
          _temperatureConverter.celsiusUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != TemperatureUnitType.fahrenheit) {
        temperatureControllerListeners.setFahrenheitControllerValue(
          _temperatureConverter.fahrenheitUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != TemperatureUnitType.kelvin) {
        temperatureControllerListeners.setKelvinControllerValue(
          _temperatureConverter.kelvinUnitConverter.convert(
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
