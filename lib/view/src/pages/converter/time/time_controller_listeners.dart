import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:unit_converter/view/src/utils/extensions/string_extensions.dart';

import '../../../utils/converters/time/time_unit_type.dart';
import 'time_tab_manager.dart';

@injectable
class TimeControllerListeners {
  final TextEditingController centuryController = TextEditingController();
  final TextEditingController decadeController = TextEditingController();
  final TextEditingController yearController = TextEditingController();
  final TextEditingController monthController = TextEditingController();
  final TextEditingController weekController = TextEditingController();
  final TextEditingController dayController = TextEditingController();
  final TextEditingController hourController = TextEditingController();
  final TextEditingController minuteController = TextEditingController();
  final TextEditingController secondController = TextEditingController();
  final TextEditingController millisecondController = TextEditingController();
  final TextEditingController microsecondController = TextEditingController();
  final TextEditingController nanosecondController = TextEditingController();

  int centuryInputLength = 0;
  int decadeInputLength = 0;
  int yearInputLength = 0;
  int monthInputLength = 0;
  int weekInputLength = 0;
  int dayInputLength = 0;
  int hourInputLength = 0;
  int minuteInputLength = 0;
  int secondInputLength = 0;
  int millisecondInputLength = 0;
  int microsecondInputLength = 0;
  int nanosecondInputLength = 0;

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
      case TimeUnitType.day:
        return double.parse(dayController.value.text);
      case TimeUnitType.hour:
        return double.parse(hourController.value.text);
      case TimeUnitType.minute:
        return double.parse(minuteController.value.text);
      case TimeUnitType.second:
        return double.parse(secondController.value.text);
      case TimeUnitType.millisecond:
        return double.parse(millisecondController.value.text);
      case TimeUnitType.microsecond:
        return double.parse(microsecondController.value.text);
      default: // nanosecond
        return double.parse(nanosecondController.value.text);
    }
  }

  // create
  void initListeners(TimeTabManager manager) {
    centuryController.addListener(() => _onCenturyInputListener(manager));
    decadeController.addListener(() => _onDecadeInputListener(manager));
    yearController.addListener(() => _onYearInputListener(manager));
    monthController.addListener(() => _onMonthInputListener(manager));
    weekController.addListener(() => _onWeekInputListener(manager));
    dayController.addListener(() => _onDayInputListener(manager));
    hourController.addListener(() => _onHourInputListener(manager));
    minuteController.addListener(() => _onMinuteInputListener(manager));
    secondController.addListener(() => _onSecondInputListener(manager));
    millisecondController
        .addListener(() => _onMillisecondInputListener(manager));
    microsecondController
        .addListener(() => _onMicrosecondInputListener(manager));
    nanosecondController.addListener(() => _onNanosecondInputListener(manager));
  }

  // dispose
  void dispose(TimeTabManager manager) {
    centuryController.removeListener(() => _onCenturyInputListener(manager));
    decadeController.removeListener(() => _onDecadeInputListener(manager));
    yearController.removeListener(() => _onYearInputListener(manager));
    monthController.removeListener(() => _onMonthInputListener(manager));
    weekController.removeListener(() => _onWeekInputListener(manager));
    dayController.removeListener(() => _onDayInputListener(manager));
    hourController.removeListener(() => _onHourInputListener(manager));
    minuteController.removeListener(() => _onMinuteInputListener(manager));
    secondController.removeListener(() => _onSecondInputListener(manager));
    millisecondController
        .removeListener(() => _onMillisecondInputListener(manager));
    microsecondController
        .removeListener(() => _onMicrosecondInputListener(manager));
    nanosecondController
        .removeListener(() => _onNanosecondInputListener(manager));

    centuryController.dispose();
    decadeController.dispose();
    yearController.dispose();
    monthController.dispose();
    weekController.dispose();
    dayController.dispose();
    hourController.dispose();
    minuteController.dispose();
    secondController.dispose();
    millisecondController.dispose();
    microsecondController.dispose();
    nanosecondController.dispose();
  }

  // listeners
  void _onCenturyInputListener(TimeTabManager manager) {
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

  void _onDecadeInputListener(TimeTabManager manager) {
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

  void _onYearInputListener(TimeTabManager manager) {
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

  void _onMonthInputListener(TimeTabManager manager) {
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

  void _onWeekInputListener(TimeTabManager manager) {
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

  void _onDayInputListener(TimeTabManager manager) {
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

  void _onHourInputListener(TimeTabManager manager) {
    if (hourController.value.text.length != hourInputLength) {
      if (manager.inputTypeFocused.value == TimeUnitType.hour) {
        manager.setInputFrom(TimeUnitType.hour);

        if (hourController.value.text.isNotEmpty) {
          manager.convert(double.parse(hourController.value.text));
        }
      }

      hourInputLength = hourController.value.text.length;
    }
  }

  void _onMinuteInputListener(TimeTabManager manager) {
    if (minuteController.value.text.length != minuteInputLength) {
      if (manager.inputTypeFocused.value == TimeUnitType.minute) {
        manager.setInputFrom(TimeUnitType.minute);

        if (minuteController.value.text.isNotEmpty) {
          manager.convert(double.parse(minuteController.value.text));
        }
      }

      minuteInputLength = minuteController.value.text.length;
    }
  }

  void _onSecondInputListener(TimeTabManager manager) {
    if (secondController.value.text.length != secondInputLength) {
      if (manager.inputTypeFocused.value == TimeUnitType.second) {
        manager.setInputFrom(TimeUnitType.second);

        if (secondController.value.text.isNotEmpty) {
          manager.convert(double.parse(secondController.value.text));
        }
      }

      secondInputLength = secondController.value.text.length;
    }
  }

  void _onMillisecondInputListener(TimeTabManager manager) {
    if (millisecondController.value.text.length != millisecondInputLength) {
      if (manager.inputTypeFocused.value == TimeUnitType.millisecond) {
        manager.setInputFrom(TimeUnitType.millisecond);

        if (millisecondController.value.text.isNotEmpty) {
          manager.convert(double.parse(millisecondController.value.text));
        }
      }

      millisecondInputLength = millisecondController.value.text.length;
    }
  }

  void _onMicrosecondInputListener(TimeTabManager manager) {
    if (microsecondController.value.text.length != microsecondInputLength) {
      if (manager.inputTypeFocused.value == TimeUnitType.microsecond) {
        manager.setInputFrom(TimeUnitType.microsecond);

        if (microsecondController.value.text.isNotEmpty) {
          manager.convert(double.parse(microsecondController.value.text));
        }
      }

      microsecondInputLength = microsecondController.value.text.length;
    }
  }

  void _onNanosecondInputListener(TimeTabManager manager) {
    if (nanosecondController.value.text.length != nanosecondInputLength) {
      if (manager.inputTypeFocused.value == TimeUnitType.nanosecond) {
        manager.setInputFrom(TimeUnitType.nanosecond);

        if (nanosecondController.value.text.isNotEmpty) {
          manager.convert(double.parse(nanosecondController.value.text));
        }
      }

      nanosecondInputLength = nanosecondController.value.text.length;
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

  void setHourControllerValue(double value) =>
      hourController.text = value.toString().removeTrailingZeros();

  void setMinuteControllerValue(double value) =>
      minuteController.text = value.toString().removeTrailingZeros();

  void setSecondControllerValue(double value) =>
      secondController.text = value.toString().removeTrailingZeros();

  void setMillisecondControllerValue(double value) =>
      millisecondController.text = value.toString().removeTrailingZeros();

  void setMicrosecondControllerValue(double value) =>
      microsecondController.text = value.toString().removeTrailingZeros();

  void setNanosecondControllerValue(double value) =>
      nanosecondController.text = value.toString().removeTrailingZeros();
}
