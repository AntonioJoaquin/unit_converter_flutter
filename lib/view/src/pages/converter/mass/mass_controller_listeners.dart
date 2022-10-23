import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:unit_converter/view/src/utils/extensions/string_extensions.dart';

import '../../../utils/converters/mass/mass_unit_type.dart';
import 'mass_tab_manager.dart';

@injectable
class MassControllerListeners {
  final TextEditingController tonController = TextEditingController();
  final TextEditingController kilogramController = TextEditingController();
  final TextEditingController gramController = TextEditingController();
  final TextEditingController milligramController = TextEditingController();
  final TextEditingController microgramController = TextEditingController();
  final TextEditingController longTonController = TextEditingController();
  final TextEditingController shortTonController = TextEditingController();
  final TextEditingController stoneController = TextEditingController();
  final TextEditingController poundController = TextEditingController();
  final TextEditingController ounceController = TextEditingController();

  int tonInputLength = 0;
  int kilogramInputLength = 0;
  int gramInputLength = 0;
  int milligramInputLength = 0;
  int microgramInputLength = 0;
  int longTonInputLength = 0;
  int shortTonInputLength = 0;
  int stoneInputLength = 0;
  int poundInputLength = 0;
  int ounceInputLength = 0;

  double getConverterFromValue(MassUnitType type) {
    switch (type) {
      case MassUnitType.ton:
        return double.parse(tonController.value.text);
      case MassUnitType.kilogram:
        return double.parse(kilogramController.value.text);
      case MassUnitType.gram:
        return double.parse(gramController.value.text);
      case MassUnitType.milligram:
        return double.parse(milligramController.value.text);
      case MassUnitType.microgram:
        return double.parse(microgramController.value.text);
      case MassUnitType.longTon:
        return double.parse(longTonController.value.text);
      case MassUnitType.shortTon:
        return double.parse(shortTonController.value.text);
      case MassUnitType.stone:
        return double.parse(stoneController.value.text);
      case MassUnitType.pound:
        return double.parse(poundController.value.text);
      default: // ounce
        return double.parse(ounceController.value.text);
    }
  }

  // create
  void initListeners(MassTabManager manager) {
    tonController.addListener(() => _onTonInputListener(manager));
    kilogramController.addListener(() => _onKilogramInputListener(manager));
    gramController.addListener(() => _onGramInputListener(manager));
    milligramController.addListener(() => _onMilligramInputListener(manager));
    microgramController.addListener(() => _onMicrogramInputListener(manager));
    longTonController.addListener(() => _onLongTonInputListener(manager));
    shortTonController.addListener(() => _onShortTonInputListener(manager));
    stoneController.addListener(() => _onStoneInputListener(manager));
    poundController.addListener(() => _onPoundInputListener(manager));
    ounceController.addListener(() => _onOunceInputListener(manager));
  }

  // dispose
  void dispose(MassTabManager manager) {
    tonController.removeListener(() => _onTonInputListener(manager));
    kilogramController.removeListener(() => _onKilogramInputListener(manager));
    gramController.removeListener(() => _onGramInputListener(manager));
    milligramController
        .removeListener(() => _onMilligramInputListener(manager));
    microgramController
        .removeListener(() => _onMicrogramInputListener(manager));
    longTonController.removeListener(() => _onLongTonInputListener(manager));
    shortTonController.removeListener(() => _onShortTonInputListener(manager));
    stoneController.removeListener(() => _onStoneInputListener(manager));
    poundController.removeListener(() => _onPoundInputListener(manager));
    ounceController.removeListener(() => _onOunceInputListener(manager));

    tonController.dispose();
    kilogramController.dispose();
    gramController.dispose();
    milligramController.dispose();
    microgramController.dispose();
    longTonController.dispose();
    shortTonController.dispose();
    stoneController.dispose();
    poundController.dispose();
    ounceController.dispose();
  }

  // listeners
  void _onTonInputListener(MassTabManager manager) {
    if (tonController.value.text.length != tonInputLength) {
      if (manager.inputTypeFocused.value == MassUnitType.ton) {
        manager.setInputFrom(MassUnitType.ton);

        if (tonController.value.text.isNotEmpty) {
          manager.convert(double.parse(tonController.value.text));
        }
      }

      tonInputLength = tonController.value.text.length;
    }
  }

  void _onKilogramInputListener(MassTabManager manager) {
    if (kilogramController.value.text.length != kilogramInputLength) {
      if (manager.inputTypeFocused.value == MassUnitType.kilogram) {
        manager.setInputFrom(MassUnitType.kilogram);

        if (kilogramController.value.text.isNotEmpty) {
          manager.convert(double.parse(kilogramController.value.text));
        }
      }

      kilogramInputLength = kilogramController.value.text.length;
    }
  }

  void _onGramInputListener(MassTabManager manager) {
    if (gramController.value.text.length != gramInputLength) {
      if (manager.inputTypeFocused.value == MassUnitType.gram) {
        manager.setInputFrom(MassUnitType.gram);

        if (gramController.value.text.isNotEmpty) {
          manager.convert(double.parse(gramController.value.text));
        }
      }

      gramInputLength = gramController.value.text.length;
    }
  }

  void _onMilligramInputListener(MassTabManager manager) {
    if (milligramController.value.text.length != milligramInputLength) {
      if (manager.inputTypeFocused.value == MassUnitType.milligram) {
        manager.setInputFrom(MassUnitType.milligram);

        if (milligramController.value.text.isNotEmpty) {
          manager.convert(double.parse(milligramController.value.text));
        }
      }

      milligramInputLength = milligramController.value.text.length;
    }
  }

  void _onMicrogramInputListener(MassTabManager manager) {
    if (microgramController.value.text.length != microgramInputLength) {
      if (manager.inputTypeFocused.value == MassUnitType.microgram) {
        manager.setInputFrom(MassUnitType.microgram);

        if (microgramController.value.text.isNotEmpty) {
          manager.convert(double.parse(microgramController.value.text));
        }
      }

      microgramInputLength = microgramController.value.text.length;
    }
  }

  void _onLongTonInputListener(MassTabManager manager) {
    if (longTonController.value.text.length != longTonInputLength) {
      if (manager.inputTypeFocused.value == MassUnitType.longTon) {
        manager.setInputFrom(MassUnitType.longTon);

        if (longTonController.value.text.isNotEmpty) {
          manager.convert(double.parse(longTonController.value.text));
        }
      }

      longTonInputLength = longTonController.value.text.length;
    }
  }

  void _onShortTonInputListener(MassTabManager manager) {
    if (shortTonController.value.text.length != shortTonInputLength) {
      if (manager.inputTypeFocused.value == MassUnitType.shortTon) {
        manager.setInputFrom(MassUnitType.shortTon);

        if (shortTonController.value.text.isNotEmpty) {
          manager.convert(double.parse(shortTonController.value.text));
        }
      }

      shortTonInputLength = shortTonController.value.text.length;
    }
  }

  void _onStoneInputListener(MassTabManager manager) {
    if (stoneController.value.text.length != stoneInputLength) {
      if (manager.inputTypeFocused.value == MassUnitType.stone) {
        manager.setInputFrom(MassUnitType.stone);

        if (stoneController.value.text.isNotEmpty) {
          manager.convert(double.parse(stoneController.value.text));
        }
      }

      stoneInputLength = stoneController.value.text.length;
    }
  }

  void _onPoundInputListener(MassTabManager manager) {
    if (poundController.value.text.length != poundInputLength) {
      if (manager.inputTypeFocused.value == MassUnitType.pound) {
        manager.setInputFrom(MassUnitType.pound);

        if (poundController.value.text.isNotEmpty) {
          manager.convert(double.parse(poundController.value.text));
        }
      }

      poundInputLength = poundController.value.text.length;
    }
  }

  void _onOunceInputListener(MassTabManager manager) {
    if (ounceController.value.text.length != ounceInputLength) {
      if (manager.inputTypeFocused.value == MassUnitType.ounce) {
        manager.setInputFrom(MassUnitType.ounce);

        if (ounceController.value.text.isNotEmpty) {
          manager.convert(double.parse(ounceController.value.text));
        }
      }

      ounceInputLength = ounceController.value.text.length;
    }
  }

  // setters
  void setTonControllerValue(double value) =>
      tonController.text = value.toString().removeTrailingZeros();

  void setKilogramControllerValue(double value) =>
      kilogramController.text = value.toString().removeTrailingZeros();

  void setGramControllerValue(double value) =>
      gramController.text = value.toString().removeTrailingZeros();

  void setMilligramControllerValue(double value) =>
      milligramController.text = value.toString().removeTrailingZeros();

  void setMicrogramControllerValue(double value) =>
      microgramController.text = value.toString().removeTrailingZeros();

  void setLongTonControllerValue(double value) =>
      longTonController.text = value.toString().removeTrailingZeros();

  void setShortTonControllerValue(double value) =>
      shortTonController.text = value.toString().removeTrailingZeros();

  void setStoneControllerValue(double value) =>
      stoneController.text = value.toString().removeTrailingZeros();

  void setPoundControllerValue(double value) =>
      poundController.text = value.toString().removeTrailingZeros();

  void setOunceControllerValue(double value) =>
      ounceController.text = value.toString().removeTrailingZeros();
}
