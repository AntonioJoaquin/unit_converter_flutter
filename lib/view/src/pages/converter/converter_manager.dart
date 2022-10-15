import 'package:injectable/injectable.dart';

import '../../../../core/common/custom_notifier.dart';
import '../../utils/converters/time/time_unit_type.dart';

@injectable
class ConverterManager {
  final CustomValueNotifier<TimeUnitType?> _inputTypeFocused =
      CustomValueNotifier(null);
  CustomValueNotifier<TimeUnitType?> get inputTypeFocused => _inputTypeFocused;

  // setters
  void onFocusInput(TimeUnitType type) => _inputTypeFocused.value = type;

  void dispose() {
    _inputTypeFocused.dispose();
  }
}
