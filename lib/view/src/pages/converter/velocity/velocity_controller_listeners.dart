import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:unit_converter/view/src/utils/extensions/string_extensions.dart';

import '../../../utils/converters/velocity/velocity_unit_type.dart';
import 'velocity_tab_manager.dart';

@injectable
class VelocityControllerListeners {
  final TextEditingController milePerHourController = TextEditingController();
  final TextEditingController footPerSecondController = TextEditingController();
  final TextEditingController meterPerSecondController =
      TextEditingController();
  final TextEditingController kilometerPerHourController =
      TextEditingController();
  final TextEditingController knotController = TextEditingController();

  int milePerHourInputLength = 0;
  int footPerSecondInputLength = 0;
  int meterPerSecondInputLength = 0;
  int kilometerPerHourInputLength = 0;
  int knotInputLength = 0;

  double getConverterFromValue(VelocityUnitType type) {
    switch (type) {
      case VelocityUnitType.milePerHour:
        return double.parse(milePerHourController.value.text);
      case VelocityUnitType.footPerSecond:
        return double.parse(footPerSecondController.value.text);
      case VelocityUnitType.meterPerSecond:
        return double.parse(meterPerSecondController.value.text);
      case VelocityUnitType.kilometerPerHour:
        return double.parse(kilometerPerHourController.value.text);
      default: // knot
        return double.parse(knotController.value.text);
    }
  }

  // create
  void initListeners(VelocityTabManager manager) {
    milePerHourController
        .addListener(() => _onMilePerHourInputListener(manager));
    footPerSecondController
        .addListener(() => _onFootPerSecondInputListener(manager));
    meterPerSecondController
        .addListener(() => _onMeterPerSecondInputListener(manager));
    kilometerPerHourController
        .addListener(() => _onKilometerPerHourInputListener(manager));
    knotController.addListener(() => _onKnotInputListener(manager));
  }

  // dispose
  void dispose(VelocityTabManager manager) {
    milePerHourController
        .removeListener(() => _onMilePerHourInputListener(manager));
    footPerSecondController
        .removeListener(() => _onFootPerSecondInputListener(manager));
    meterPerSecondController
        .removeListener(() => _onMeterPerSecondInputListener(manager));
    kilometerPerHourController
        .removeListener(() => _onKilometerPerHourInputListener(manager));
    knotController.removeListener(() => _onKnotInputListener(manager));

    milePerHourController.dispose();
    footPerSecondController.dispose();
    meterPerSecondController.dispose();
    kilometerPerHourController.dispose();
    knotController.dispose();
  }

  // listeners
  void _onMilePerHourInputListener(VelocityTabManager manager) {
    if (milePerHourController.value.text.length != milePerHourInputLength) {
      if (manager.inputTypeFocused.value == VelocityUnitType.milePerHour) {
        manager.setInputFrom(VelocityUnitType.milePerHour);

        if (milePerHourController.value.text.isNotEmpty) {
          manager.convert(double.parse(milePerHourController.value.text));
        }
      }

      milePerHourInputLength = milePerHourController.value.text.length;
    }
  }

  void _onFootPerSecondInputListener(VelocityTabManager manager) {
    if (footPerSecondController.value.text.length != footPerSecondInputLength) {
      if (manager.inputTypeFocused.value == VelocityUnitType.footPerSecond) {
        manager.setInputFrom(VelocityUnitType.footPerSecond);

        if (footPerSecondController.value.text.isNotEmpty) {
          manager.convert(double.parse(footPerSecondController.value.text));
        }
      }

      footPerSecondInputLength = footPerSecondController.value.text.length;
    }
  }

  void _onMeterPerSecondInputListener(VelocityTabManager manager) {
    if (meterPerSecondController.value.text.length !=
        meterPerSecondInputLength) {
      if (manager.inputTypeFocused.value == VelocityUnitType.meterPerSecond) {
        manager.setInputFrom(VelocityUnitType.meterPerSecond);

        if (meterPerSecondController.value.text.isNotEmpty) {
          manager.convert(double.parse(meterPerSecondController.value.text));
        }
      }

      meterPerSecondInputLength = meterPerSecondController.value.text.length;
    }
  }

  void _onKilometerPerHourInputListener(VelocityTabManager manager) {
    if (kilometerPerHourController.value.text.length !=
        kilometerPerHourInputLength) {
      if (manager.inputTypeFocused.value == VelocityUnitType.kilometerPerHour) {
        manager.setInputFrom(VelocityUnitType.kilometerPerHour);

        if (kilometerPerHourController.value.text.isNotEmpty) {
          manager.convert(double.parse(kilometerPerHourController.value.text));
        }
      }

      kilometerPerHourInputLength =
          kilometerPerHourController.value.text.length;
    }
  }

  void _onKnotInputListener(VelocityTabManager manager) {
    if (knotController.value.text.length != knotInputLength) {
      if (manager.inputTypeFocused.value == VelocityUnitType.knot) {
        manager.setInputFrom(VelocityUnitType.knot);

        if (knotController.value.text.isNotEmpty) {
          manager.convert(double.parse(knotController.value.text));
        }
      }

      knotInputLength = knotController.value.text.length;
    }
  }

  // setters
  void setMilePerHourControllerValue(double value) =>
      milePerHourController.text = value.toString().removeTrailingZeros();

  void setFootPerSecondControllerValue(double value) =>
      footPerSecondController.text = value.toString().removeTrailingZeros();

  void setMeterPerSecondControllerValue(double value) =>
      meterPerSecondController.text = value.toString().removeTrailingZeros();

  void setKilometerPerHourControllerValue(double value) =>
      kilometerPerHourController.text = value.toString().removeTrailingZeros();

  void setKnotControllerValue(double value) =>
      knotController.text = value.toString().removeTrailingZeros();
}
