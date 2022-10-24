import 'package:injectable/injectable.dart';

import '../../../../../core/common/custom_notifier.dart';
import '../../../utils/converters/money/money_unit_type.dart';
import 'money_controller_listeners.dart';
import 'money_converter.dart';

@injectable
class MoneyTabManager {
  final MoneyControllerListeners moneyControllerListeners;
  final MoneyConverter _moneyConverter;

  MoneyTabManager(this.moneyControllerListeners, this._moneyConverter);

  // variables
  final CustomValueNotifier<MoneyUnitType?> _inputTypeFocused =
      CustomValueNotifier(null);
  CustomValueNotifier<MoneyUnitType?> get inputTypeFocused => _inputTypeFocused;

  final CustomValueNotifier<MoneyUnitType> _inputTypeFrom =
      CustomValueNotifier(MoneyUnitType.euro);
  CustomValueNotifier<MoneyUnitType> get inputTypeFrom => _inputTypeFrom;

  // setters
  void onFocusInput(MoneyUnitType type) => _inputTypeFocused.value = type;

  void setInputFrom(MoneyUnitType type) => _inputTypeFrom.value = type;

  // getters
  String getToForm(MoneyUnitType type) {
    switch (_inputTypeFrom.value) {
      case MoneyUnitType.euro:
        return type.fromEuro;
      case MoneyUnitType.peseta:
        return type.fromPeseta;
      case MoneyUnitType.dollar:
        return type.fromDollar;
      default: // yen
        return type.fromYen;
    }
  }

  // actions
  void convert(double value) {
    if (_inputTypeFocused.value == _inputTypeFrom.value) {
      if (_inputTypeFrom.value != MoneyUnitType.euro) {
        moneyControllerListeners.setEuroControllerValue(
          _moneyConverter.euroUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != MoneyUnitType.peseta) {
        moneyControllerListeners.setPesetaControllerValue(
          _moneyConverter.pesetaUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != MoneyUnitType.dollar) {
        moneyControllerListeners.setDollarControllerValue(
          _moneyConverter.dollarUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != MoneyUnitType.yen) {
        moneyControllerListeners.setYenControllerValue(
          _moneyConverter.yenUnitConverter.convert(
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
