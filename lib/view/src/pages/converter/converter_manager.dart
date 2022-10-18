import 'package:injectable/injectable.dart';

import '../../../../core/common/custom_notifier.dart';
import '../../utils/converters/time/time_unit_type.dart';
import 'time/time_controller_listeners.dart';
import 'time/time_converter.dart';

@injectable
class ConverterManager {
  final TimeControllerListeners timeControllerListeners;
  final TimeConverter _timeConverter;

  ConverterManager(this.timeControllerListeners, this._timeConverter);

  // variables
  final CustomValueNotifier<TimeUnitType?> _inputTypeFocused =
      CustomValueNotifier(null);
  CustomValueNotifier<TimeUnitType?> get inputTypeFocused => _inputTypeFocused;

  final CustomValueNotifier<TimeUnitType> _inputTypeFrom =
      CustomValueNotifier(TimeUnitType.day);
  CustomValueNotifier<TimeUnitType> get inputTypeFrom => _inputTypeFrom;

  // setters
  void onFocusInput(TimeUnitType type) => _inputTypeFocused.value = type;

  void setInputFrom(TimeUnitType type) => _inputTypeFrom.value = type;

  // getters
  String getToForm(TimeUnitType type) {
    switch (_inputTypeFrom.value) {
      case TimeUnitType.century:
        return type.fromCentury;
      case TimeUnitType.decade:
        return type.fromDecade;
      case TimeUnitType.year:
        return type.fromYear;
      case TimeUnitType.month:
        return type.fromMonth;
      case TimeUnitType.week:
        return type.fromWeek;
      case TimeUnitType.day:
        return type.fromDay;
      case TimeUnitType.hour:
        return type.fromHour;
      case TimeUnitType.minute:
        return type.fromMinute;
      case TimeUnitType.second:
        return type.fromSecond;
      case TimeUnitType.millisecond:
        return type.fromMillisecond;
      case TimeUnitType.microsecond:
        return type.fromMicrosecond;
      default: // nanosecond
        return type.fromNanosecond;
    }
  }

  // actions
  void convert(double value) {
    if (_inputTypeFocused.value == _inputTypeFrom.value) {
      if (_inputTypeFrom.value != TimeUnitType.century) {
        timeControllerListeners.setCenturyControllerValue(
          _timeConverter.centuryUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != TimeUnitType.decade) {
        timeControllerListeners.setDecadeControllerValue(
          _timeConverter.decadeUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != TimeUnitType.year) {
        timeControllerListeners.setYearControllerValue(
          _timeConverter.yearUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != TimeUnitType.month) {
        timeControllerListeners.setMonthControllerValue(
          _timeConverter.monthUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != TimeUnitType.week) {
        timeControllerListeners.setWeekControllerValue(
          _timeConverter.weekUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != TimeUnitType.day) {
        timeControllerListeners.setDayControllerValue(
          _timeConverter.dayUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != TimeUnitType.hour) {
        timeControllerListeners.setHourControllerValue(
          _timeConverter.hourUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != TimeUnitType.minute) {
        timeControllerListeners.setMinuteControllerValue(
          _timeConverter.minuteUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != TimeUnitType.second) {
        timeControllerListeners.setSecondControllerValue(
          _timeConverter.secondUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != TimeUnitType.millisecond) {
        timeControllerListeners.setMillisecondControllerValue(
          _timeConverter.millisecondUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != TimeUnitType.microsecond) {
        timeControllerListeners.setMicrosecondControllerValue(
          _timeConverter.microsecondUnitConverter.convert(
            _inputTypeFrom.value,
            value,
          ),
        );
      }

      if (_inputTypeFrom.value != TimeUnitType.nanosecond) {
        timeControllerListeners.setNanosecondControllerValue(
          _timeConverter.nanosecondUnitConverter.convert(
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
