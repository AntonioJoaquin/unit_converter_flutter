import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:unit_converter/view/src/utils/extensions/string_extensions.dart';

import '../../../utils/converters/time/time_unit_type.dart';
import '../converter_manager.dart';

@lazySingleton
class TimeControllerListeners {
  final TextEditingController centuryController = TextEditingController();
  final TextEditingController decadeController = TextEditingController();
  final TextEditingController yearController = TextEditingController();
  final TextEditingController monthController = TextEditingController();
  final TextEditingController weekController = TextEditingController();
  final TextEditingController dayController = TextEditingController();

  int centuryInputLength = 0;
  int decadeInputLength = 0;
  int yearInputLength = 0;
  int monthInputLength = 0;
  int weekInputLength = 0;
  int dayInputLength = 0;

  double getConverterFromValue(TimeUnitType type) {
    switch (type) {
      case TimeUnitType.century:
        return double.parse(centuryController.value.text);
      case TimeUnitType.decade:
        return double.parse(decadeController.value.text);
      case TimeUnitType.year:
        return double.parse(yearController.value.text);
      case TimeUnitType.month:
        return double.parse(monthController.value.text);
      case TimeUnitType.week:
        return double.parse(weekController.value.text);
      default: // day
        return double.parse(dayController.value.text);
    }
  }

  // create
  void initListeners(ConverterManager manager) {
    centuryController.addListener(() => _onCenturyInputListener(manager));
    decadeController.addListener(() => _onDecadeInputListener(manager));
    yearController.addListener(() => _onYearInputListener(manager));
    monthController.addListener(() => _onMonthInputListener(manager));
    weekController.addListener(() => _onWeekInputListener(manager));
    dayController.addListener(() => _onDayInputListener(manager));
  }

  // dispose
  void dispose(ConverterManager manager) {
    centuryController.removeListener(() => _onCenturyInputListener(manager));
    decadeController.removeListener(() => _onDecadeInputListener(manager));
    yearController.removeListener(() => _onYearInputListener(manager));
    monthController.removeListener(() => _onMonthInputListener(manager));
    weekController.removeListener(() => _onWeekInputListener(manager));
    dayController.removeListener(() => _onDayInputListener(manager));

    centuryController.dispose();
    decadeController.dispose();
    yearController.dispose();
    monthController.dispose();
    weekController.dispose();
    dayController.dispose();
  }

  // listeners
  void _onCenturyInputListener(ConverterManager manager) {
    if (centuryController.value.text.length != centuryInputLength) {
      if (manager.inputTypeFocused.value == TimeUnitType.century) {
        manager.setInputFrom(TimeUnitType.century);

        if (centuryController.value.text.isNotEmpty) {
          manager.convert(double.parse(centuryController.value.text));
        }
      }

      centuryInputLength = centuryController.value.text.length;
    }
  }

  void _onDecadeInputListener(ConverterManager manager) {
    if (decadeController.value.text.length != decadeInputLength) {
      if (manager.inputTypeFocused.value == TimeUnitType.decade) {
        manager.setInputFrom(TimeUnitType.decade);

        if (decadeController.value.text.isNotEmpty) {
          manager.convert(double.parse(decadeController.value.text));
        }
      }

      decadeInputLength = decadeController.value.text.length;
    }
  }

  void _onYearInputListener(ConverterManager manager) {
    if (yearController.value.text.length != yearInputLength) {
      if (manager.inputTypeFocused.value == TimeUnitType.year) {
        manager.setInputFrom(TimeUnitType.year);

        if (yearController.value.text.isNotEmpty) {
          manager.convert(double.parse(yearController.value.text));
        }
      }

      yearInputLength = yearController.value.text.length;
    }
  }

  void _onMonthInputListener(ConverterManager manager) {
    if (monthController.value.text.length != monthInputLength) {
      if (manager.inputTypeFocused.value == TimeUnitType.month) {
        manager.setInputFrom(TimeUnitType.month);

        if (monthController.value.text.isNotEmpty) {
          manager.convert(double.parse(monthController.value.text));
        }
      }

      monthInputLength = monthController.value.text.length;
    }
  }

  void _onWeekInputListener(ConverterManager manager) {
    if (weekController.value.text.length != weekInputLength) {
      if (manager.inputTypeFocused.value == TimeUnitType.week) {
        manager.setInputFrom(TimeUnitType.week);

        if (weekController.value.text.isNotEmpty) {
          manager.convert(double.parse(weekController.value.text));
        }
      }

      weekInputLength = weekController.value.text.length;
    }
  }

  void _onDayInputListener(ConverterManager manager) {
    if (dayController.value.text.length != dayInputLength) {
      if (manager.inputTypeFocused.value == TimeUnitType.day) {
        manager.setInputFrom(TimeUnitType.day);

        if (dayController.value.text.isNotEmpty) {
          manager.convert(double.parse(dayController.value.text));
        }
      }

      dayInputLength = dayController.value.text.length;
    }
  }

  // setters
  void setCenturyControllerValue(double value) =>
      centuryController.text = value.toString().removeTrailingZeros();

  void setDecadeControllerValue(double value) =>
      decadeController.text = value.toString().removeTrailingZeros();

  void setYearControllerValue(double value) =>
      yearController.text = value.toString().removeTrailingZeros();

  void setMonthControllerValue(double value) =>
      monthController.text = value.toString().removeTrailingZeros();

  void setWeekControllerValue(double value) =>
      weekController.text = value.toString().removeTrailingZeros();

  void setDayControllerValue(double value) =>
      dayController.text = value.toString().removeTrailingZeros();
}
