import 'package:injectable/injectable.dart';

import '../../../../core/common/custom_notifier.dart';
import '../../utils/converters/time/time_unit_type.dart';

@injectable
class ConverterManager {
  final CustomValueNotifier<TimeUnitType?> _inputTypeFocused =
      CustomValueNotifier(null);
  CustomValueNotifier<TimeUnitType?> get inputTypeFocused => _inputTypeFocused;

  final CustomValueNotifier<TimeUnitType> _inputTypeFrom =
      CustomValueNotifier(TimeUnitType.day);
  CustomValueNotifier<TimeUnitType> get inputTypeFrom => _inputTypeFrom;

  // setters
  void onFocusInput(TimeUnitType type) => _inputTypeFocused.value = type;

  // getters
  String getToForm(TimeUnitType type) {
    switch (_inputTypeFrom.value) {
      case TimeUnitType.century:
        return type.toCentury;
      case TimeUnitType.decade:
        return type.toDecade;
      case TimeUnitType.year:
        return type.toYear;
      case TimeUnitType.month:
        return type.toMonth;
      case TimeUnitType.week:
        return type.toWeek;
      default: // day
        return type.toDay;
    }
  }

  void dispose() {
    _inputTypeFocused.dispose();
    _inputTypeFrom.dispose();
  }
}
