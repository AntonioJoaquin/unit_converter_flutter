import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:unit_converter/view/src/utils/extensions/string_extensions.dart';

import '../../../utils/converters/money/money_unit_type.dart';
import 'money_tab_manager.dart';

@injectable
class MoneyControllerListeners {
  final TextEditingController euroController = TextEditingController();
  final TextEditingController pesetaController = TextEditingController();
  final TextEditingController dollarController = TextEditingController();
  final TextEditingController yenController = TextEditingController();

  int euroInputLength = 0;
  int pesetaInputLength = 0;
  int dollarInputLength = 0;
  int yenInputLength = 0;

  double getConverterFromValue(MoneyUnitType type) {
    switch (type) {
      case MoneyUnitType.euro:
        return double.parse(euroController.value.text);
      case MoneyUnitType.peseta:
        return double.parse(pesetaController.value.text);
      case MoneyUnitType.dollar:
        return double.parse(dollarController.value.text);
      default: // yen
        return double.parse(yenController.value.text);
    }
  }

  // create
  void initListeners(MoneyTabManager manager) {
    euroController.addListener(() => _onEuroInputListener(manager));
    pesetaController.addListener(() => _onPesetaInputListener(manager));
    dollarController.addListener(() => _onDollarInputListener(manager));
    yenController.addListener(() => _onYenInputListener(manager));
  }

  // dispose
  void dispose(MoneyTabManager manager) {
    euroController.removeListener(() => _onEuroInputListener(manager));
    pesetaController.removeListener(() => _onPesetaInputListener(manager));
    dollarController.removeListener(() => _onDollarInputListener(manager));
    yenController.removeListener(() => _onYenInputListener(manager));

    euroController.dispose();
    pesetaController.dispose();
    dollarController.dispose();
    yenController.dispose();
  }

  // listeners
  void _onEuroInputListener(MoneyTabManager manager) {
    if (euroController.value.text.length != euroInputLength) {
      if (manager.inputTypeFocused.value == MoneyUnitType.euro) {
        manager.setInputFrom(MoneyUnitType.euro);

        if (euroController.value.text.isNotEmpty) {
          manager.convert(double.parse(euroController.value.text));
        }
      }

      euroInputLength = euroController.value.text.length;
    }
  }

  void _onPesetaInputListener(MoneyTabManager manager) {
    if (pesetaController.value.text.length != pesetaInputLength) {
      if (manager.inputTypeFocused.value == MoneyUnitType.peseta) {
        manager.setInputFrom(MoneyUnitType.peseta);

        if (pesetaController.value.text.isNotEmpty) {
          manager.convert(double.parse(pesetaController.value.text));
        }
      }

      pesetaInputLength = pesetaController.value.text.length;
    }
  }

  void _onDollarInputListener(MoneyTabManager manager) {
    if (dollarController.value.text.length != dollarInputLength) {
      if (manager.inputTypeFocused.value == MoneyUnitType.dollar) {
        manager.setInputFrom(MoneyUnitType.dollar);

        if (dollarController.value.text.isNotEmpty) {
          manager.convert(double.parse(dollarController.value.text));
        }
      }

      dollarInputLength = dollarController.value.text.length;
    }
  }

  void _onYenInputListener(MoneyTabManager manager) {
    if (yenController.value.text.length != yenInputLength) {
      if (manager.inputTypeFocused.value == MoneyUnitType.yen) {
        manager.setInputFrom(MoneyUnitType.yen);

        if (yenController.value.text.isNotEmpty) {
          manager.convert(double.parse(yenController.value.text));
        }
      }

      yenInputLength = yenController.value.text.length;
    }
  }

  // setters
  void setEuroControllerValue(double value) =>
      euroController.text = value.toString().removeTrailingZeros();

  void setPesetaControllerValue(double value) =>
      pesetaController.text = value.toString().removeTrailingZeros();

  void setDollarControllerValue(double value) =>
      dollarController.text = value.toString().removeTrailingZeros();

  void setYenControllerValue(double value) =>
      yenController.text = value.toString().removeTrailingZeros();
}
