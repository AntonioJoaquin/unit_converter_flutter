import 'package:injectable/injectable.dart';

import '../../../../../core/common/custom_notifier.dart';
import '../../../utils/converters/mass/mass_unit_type.dart';
import 'mass_controller_listeners.dart';
import 'mass_converter.dart';

@injectable
class MassTabManager {
  final MassControllerListeners massControllerListeners;
  final MassConverter _massConverter;

  MassTabManager(this.massControllerListeners, this._massConverter);

  // variables
  final CustomValueNotifier<MassUnitType?> _inputTypeFocused =
      CustomValueNotifier(null);
  CustomValueNotifier<MassUnitType?> get inputTypeFocused => _inputTypeFocused;

  final CustomValueNotifier<MassUnitType> _inputTypeFrom =
      CustomValueNotifier(MassUnitType.kilogram);
  CustomValueNotifier<MassUnitType> get inputTypeFrom => _inputTypeFrom;

  // setters
  void onFocusInput(MassUnitType type) => _inputTypeFocused.value = type;

  void setInputFrom(MassUnitType type) => _inputTypeFrom.value = type;

  // getters
  String getToForm(MassUnitType type) {
    switch (_inputTypeFrom.value) {
      case MassUnitType.ton:
        return type.fromTon;
      case MassUnitType.kilogram:
        return type.fromKilogram;
      case MassUnitType.gram:
        return type.fromGram;
      case MassUnitType.milligram:
        return type.fromMilligram;
      case MassUnitType.microgram:
        return type.fromMicrogram;
      case MassUnitType.longTon:
        return type.fromLongTon;
      case MassUnitType.shortTon:
        return type.fromShortTon;
      case MassUnitType.stone:
        return type.fromStone;
      case MassUnitType.pound:
        return type.fromPound;
      default: // ounce
        return type.fromOunce;
    }
  }

  // actions
  void convert(double value) {
    if (_inputTypeFocused.value == _inputTypeFrom.value) {
      if (_inputTypeFrom.value != MassUnitType.ton) {
        massControllerListeners.setTonControllerValue(
          _massConverter.tonUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != MassUnitType.kilogram) {
        massControllerListeners.setKilogramControllerValue(
          _massConverter.kilogramUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != MassUnitType.gram) {
        massControllerListeners.setGramControllerValue(
          _massConverter.gramUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != MassUnitType.milligram) {
        massControllerListeners.setMilligramControllerValue(
          _massConverter.milligramUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != MassUnitType.microgram) {
        massControllerListeners.setMicrogramControllerValue(
          _massConverter.microgramUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != MassUnitType.longTon) {
        massControllerListeners.setLongTonControllerValue(
          _massConverter.longTonUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != MassUnitType.shortTon) {
        massControllerListeners.setShortTonControllerValue(
          _massConverter.shortTonUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != MassUnitType.stone) {
        massControllerListeners.setStoneControllerValue(
          _massConverter.stoneUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != MassUnitType.pound) {
        massControllerListeners.setPoundControllerValue(
          _massConverter.poundUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != MassUnitType.ounce) {
        massControllerListeners.setOunceControllerValue(
          _massConverter.ounceUnitConverter.convert(
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
