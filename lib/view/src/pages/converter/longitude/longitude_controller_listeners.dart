import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:unit_converter/view/src/utils/extensions/string_extensions.dart';

import '../../../utils/converters/longitude/longitude_unit_type.dart';
import 'longitude_tab_manager.dart';

@injectable
class LongitudeControllerListeners {
  final TextEditingController kilometerController = TextEditingController();
  final TextEditingController meterController = TextEditingController();
  final TextEditingController centimeterController = TextEditingController();
  final TextEditingController millimeterController = TextEditingController();
  final TextEditingController micrometerController = TextEditingController();
  final TextEditingController nanometerController = TextEditingController();
  final TextEditingController mileController = TextEditingController();
  final TextEditingController yardController = TextEditingController();
  final TextEditingController footController = TextEditingController();
  final TextEditingController inchController = TextEditingController();
  final TextEditingController nauticalMileController = TextEditingController();

  int kilometerInputLength = 0;
  int meterInputLength = 0;
  int centimeterInputLength = 0;
  int millimeterInputLength = 0;
  int micrometerInputLength = 0;
  int nanometerInputLength = 0;
  int mileInputLength = 0;
  int yardInputLength = 0;
  int footInputLength = 0;
  int inchInputLength = 0;
  int nauticalMileInputLength = 0;
  int nanosecondInputLength = 0;

  double getConverterFromValue(LongitudeUnitType type) {
    switch (type) {
      case LongitudeUnitType.kilometer:
        return double.parse(kilometerController.value.text);
      case LongitudeUnitType.meter:
        return double.parse(meterController.value.text);
      case LongitudeUnitType.centimeter:
        return double.parse(centimeterController.value.text);
      case LongitudeUnitType.millimeter:
        return double.parse(millimeterController.value.text);
      case LongitudeUnitType.micrometer:
        return double.parse(micrometerController.value.text);
      case LongitudeUnitType.nanometer:
        return double.parse(nanometerController.value.text);
      case LongitudeUnitType.mile:
        return double.parse(mileController.value.text);
      case LongitudeUnitType.yard:
        return double.parse(yardController.value.text);
      case LongitudeUnitType.foot:
        return double.parse(footController.value.text);
      case LongitudeUnitType.inch:
        return double.parse(inchController.value.text);
      default: // nauticalMile
        return double.parse(nauticalMileController.value.text);
    }
  }

  // create
  void initListeners(LongitudeTabManager manager) {
    kilometerController.addListener(() => _onKilometerInputListener(manager));
    meterController.addListener(() => _onMeterInputListener(manager));
    centimeterController.addListener(() => _onCentimeterInputListener(manager));
    millimeterController.addListener(() => _onMillimeterInputListener(manager));
    micrometerController.addListener(() => _onMicrometerInputListener(manager));
    nanometerController.addListener(() => _onNanometerInputListener(manager));
    mileController.addListener(() => _onMileInputListener(manager));
    yardController.addListener(() => _onYardInputListener(manager));
    footController.addListener(() => _onFootInputListener(manager));
    inchController.addListener(() => _onInchInputListener(manager));
    nauticalMileController
        .addListener(() => _onNauticalMileInputListener(manager));
  }

  // dispose
  void dispose(LongitudeTabManager manager) {
    kilometerController
        .removeListener(() => _onKilometerInputListener(manager));
    meterController.removeListener(() => _onMeterInputListener(manager));
    centimeterController
        .removeListener(() => _onCentimeterInputListener(manager));
    millimeterController
        .removeListener(() => _onMillimeterInputListener(manager));
    micrometerController
        .removeListener(() => _onMicrometerInputListener(manager));
    nanometerController
        .removeListener(() => _onNanometerInputListener(manager));
    mileController.removeListener(() => _onMileInputListener(manager));
    yardController.removeListener(() => _onYardInputListener(manager));
    footController.removeListener(() => _onFootInputListener(manager));
    inchController.removeListener(() => _onInchInputListener(manager));
    nauticalMileController
        .removeListener(() => _onNauticalMileInputListener(manager));

    kilometerController.dispose();
    meterController.dispose();
    centimeterController.dispose();
    millimeterController.dispose();
    micrometerController.dispose();
    nanometerController.dispose();
    mileController.dispose();
    yardController.dispose();
    footController.dispose();
    inchController.dispose();
    nauticalMileController.dispose();
  }

  // listeners
  void _onKilometerInputListener(LongitudeTabManager manager) {
    if (kilometerController.value.text.length != kilometerInputLength) {
      if (manager.inputTypeFocused.value == LongitudeUnitType.kilometer) {
        manager.setInputFrom(LongitudeUnitType.kilometer);

        if (kilometerController.value.text.isNotEmpty) {
          manager.convert(double.parse(kilometerController.value.text));
        }
      }

      kilometerInputLength = kilometerController.value.text.length;
    }
  }

  void _onMeterInputListener(LongitudeTabManager manager) {
    if (meterController.value.text.length != meterInputLength) {
      if (manager.inputTypeFocused.value == LongitudeUnitType.meter) {
        manager.setInputFrom(LongitudeUnitType.meter);

        if (meterController.value.text.isNotEmpty) {
          manager.convert(double.parse(meterController.value.text));
        }
      }

      meterInputLength = meterController.value.text.length;
    }
  }

  void _onCentimeterInputListener(LongitudeTabManager manager) {
    if (centimeterController.value.text.length != centimeterInputLength) {
      if (manager.inputTypeFocused.value == LongitudeUnitType.centimeter) {
        manager.setInputFrom(LongitudeUnitType.centimeter);

        if (centimeterController.value.text.isNotEmpty) {
          manager.convert(double.parse(centimeterController.value.text));
        }
      }

      centimeterInputLength = centimeterController.value.text.length;
    }
  }

  void _onMillimeterInputListener(LongitudeTabManager manager) {
    if (millimeterController.value.text.length != millimeterInputLength) {
      if (manager.inputTypeFocused.value == LongitudeUnitType.millimeter) {
        manager.setInputFrom(LongitudeUnitType.millimeter);

        if (millimeterController.value.text.isNotEmpty) {
          manager.convert(double.parse(millimeterController.value.text));
        }
      }

      millimeterInputLength = millimeterController.value.text.length;
    }
  }

  void _onMicrometerInputListener(LongitudeTabManager manager) {
    if (micrometerController.value.text.length != micrometerInputLength) {
      if (manager.inputTypeFocused.value == LongitudeUnitType.micrometer) {
        manager.setInputFrom(LongitudeUnitType.micrometer);

        if (micrometerController.value.text.isNotEmpty) {
          manager.convert(double.parse(micrometerController.value.text));
        }
      }

      micrometerInputLength = micrometerController.value.text.length;
    }
  }

  void _onNanometerInputListener(LongitudeTabManager manager) {
    if (nanometerController.value.text.length != nanometerInputLength) {
      if (manager.inputTypeFocused.value == LongitudeUnitType.nanometer) {
        manager.setInputFrom(LongitudeUnitType.nanometer);

        if (nanometerController.value.text.isNotEmpty) {
          manager.convert(double.parse(nanometerController.value.text));
        }
      }

      nanometerInputLength = nanometerController.value.text.length;
    }
  }

  void _onMileInputListener(LongitudeTabManager manager) {
    if (mileController.value.text.length != mileInputLength) {
      if (manager.inputTypeFocused.value == LongitudeUnitType.mile) {
        manager.setInputFrom(LongitudeUnitType.mile);

        if (mileController.value.text.isNotEmpty) {
          manager.convert(double.parse(mileController.value.text));
        }
      }

      mileInputLength = mileController.value.text.length;
    }
  }

  void _onYardInputListener(LongitudeTabManager manager) {
    if (yardController.value.text.length != yardInputLength) {
      if (manager.inputTypeFocused.value == LongitudeUnitType.yard) {
        manager.setInputFrom(LongitudeUnitType.yard);

        if (yardController.value.text.isNotEmpty) {
          manager.convert(double.parse(yardController.value.text));
        }
      }

      yardInputLength = yardController.value.text.length;
    }
  }

  void _onFootInputListener(LongitudeTabManager manager) {
    if (footController.value.text.length != footInputLength) {
      if (manager.inputTypeFocused.value == LongitudeUnitType.foot) {
        manager.setInputFrom(LongitudeUnitType.foot);

        if (footController.value.text.isNotEmpty) {
          manager.convert(double.parse(footController.value.text));
        }
      }

      footInputLength = footController.value.text.length;
    }
  }

  void _onInchInputListener(LongitudeTabManager manager) {
    if (inchController.value.text.length != inchInputLength) {
      if (manager.inputTypeFocused.value == LongitudeUnitType.inch) {
        manager.setInputFrom(LongitudeUnitType.inch);

        if (inchController.value.text.isNotEmpty) {
          manager.convert(double.parse(inchController.value.text));
        }
      }

      inchInputLength = inchController.value.text.length;
    }
  }

  void _onNauticalMileInputListener(LongitudeTabManager manager) {
    if (nauticalMileController.value.text.length != nauticalMileInputLength) {
      if (manager.inputTypeFocused.value == LongitudeUnitType.nauticalMile) {
        manager.setInputFrom(LongitudeUnitType.nauticalMile);

        if (nauticalMileController.value.text.isNotEmpty) {
          manager.convert(double.parse(nauticalMileController.value.text));
        }
      }

      nauticalMileInputLength = nauticalMileController.value.text.length;
    }
  }

  // setters
  void setKilometerControllerValue(double value) =>
      kilometerController.text = value.toString().removeTrailingZeros();

  void setMeterControllerValue(double value) =>
      meterController.text = value.toString().removeTrailingZeros();

  void setCentimeterControllerValue(double value) =>
      centimeterController.text = value.toString().removeTrailingZeros();

  void setMillimeterControllerValue(double value) =>
      millimeterController.text = value.toString().removeTrailingZeros();

  void setMicrometerControllerValue(double value) =>
      micrometerController.text = value.toString().removeTrailingZeros();

  void setNanometerControllerValue(double value) =>
      nanometerController.text = value.toString().removeTrailingZeros();

  void setMileControllerValue(double value) =>
      mileController.text = value.toString().removeTrailingZeros();

  void setYardControllerValue(double value) =>
      yardController.text = value.toString().removeTrailingZeros();

  void setFootControllerValue(double value) =>
      footController.text = value.toString().removeTrailingZeros();

  void setInchControllerValue(double value) =>
      inchController.text = value.toString().removeTrailingZeros();

  void setNauticalMileControllerValue(double value) =>
      nauticalMileController.text = value.toString().removeTrailingZeros();
}
