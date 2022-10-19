import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:unit_converter/view/src/utils/extensions/string_extensions.dart';

import '../../../utils/converters/temperature/temperature_unit_tytpe.dart';
import 'temperature_tab_manager.dart';

@injectable
class TemperatureControllerListeners {
  final TextEditingController celsiusController = TextEditingController();
  final TextEditingController fahrenheitController = TextEditingController();
  final TextEditingController kelvinController = TextEditingController();

  int celsiusInputLength = 0;
  int fahrenheitInputLength = 0;
  int kelvinInputLength = 0;

  double getConverterFromValue(TemperatureUnitType type) {
    switch (type) {
      case TemperatureUnitType.celsius:
        return double.parse(celsiusController.value.text);
      case TemperatureUnitType.fahrenheit:
        return double.parse(fahrenheitController.value.text);
      default: // kelvin
        return double.parse(kelvinController.value.text);
    }
  }

  // create
  void initListeners(TemperatureTabManager manager) {
    celsiusController.addListener(() => _onCelsiusInputListener(manager));
    fahrenheitController.addListener(() => _onFahrenheitInputListener(manager));
    kelvinController.addListener(() => _onKelvinputListener(manager));
  }

  // dispose
  void dispose(TemperatureTabManager manager) {
    celsiusController.removeListener(() => _onCelsiusInputListener(manager));
    fahrenheitController
        .removeListener(() => _onFahrenheitInputListener(manager));
    kelvinController.removeListener(() => _onKelvinputListener(manager));

    celsiusController.dispose();
    fahrenheitController.dispose();
    kelvinController.dispose();
  }

  // listeners
  void _onCelsiusInputListener(TemperatureTabManager manager) {
    if (celsiusController.value.text.length != celsiusInputLength) {
      if (manager.inputTypeFocused.value == TemperatureUnitType.celsius) {
        manager.setInputFrom(TemperatureUnitType.celsius);

        if (celsiusController.value.text.isNotEmpty) {
          manager.convert(double.parse(celsiusController.value.text));
        }
      }

      celsiusInputLength = celsiusController.value.text.length;
    }
  }

  void _onFahrenheitInputListener(TemperatureTabManager manager) {
    if (fahrenheitController.value.text.length != fahrenheitInputLength) {
      if (manager.inputTypeFocused.value == TemperatureUnitType.fahrenheit) {
        manager.setInputFrom(TemperatureUnitType.fahrenheit);

        if (fahrenheitController.value.text.isNotEmpty) {
          manager.convert(double.parse(fahrenheitController.value.text));
        }
      }

      fahrenheitInputLength = fahrenheitController.value.text.length;
    }
  }

  void _onKelvinputListener(TemperatureTabManager manager) {
    if (kelvinController.value.text.length != kelvinInputLength) {
      if (manager.inputTypeFocused.value == TemperatureUnitType.kelvin) {
        manager.setInputFrom(TemperatureUnitType.kelvin);

        if (kelvinController.value.text.isNotEmpty) {
          manager.convert(double.parse(kelvinController.value.text));
        }
      }

      kelvinInputLength = kelvinController.value.text.length;
    }
  }

  // setters
  void setCelsiusControllerValue(double value) =>
      celsiusController.text = value.toString().removeTrailingZeros();

  void setFahrenheitControllerValue(double value) =>
      fahrenheitController.text = value.toString().removeTrailingZeros();

  void setKelvinControllerValue(double value) =>
      kelvinController.text = value.toString().removeTrailingZeros();
}
