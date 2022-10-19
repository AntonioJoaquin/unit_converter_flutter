// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/widgets.dart' as _i18;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/services/navigation_service.dart' as _i17;
import 'view/src/pages/converter/converter_manager.dart' as _i5;
import 'view/src/pages/converter/temperature/temperature_controller_listeners.dart'
    as _i20;
import 'view/src/pages/converter/temperature/temperature_converter.dart'
    as _i21;
import 'view/src/pages/converter/temperature/temperature_tab_manager.dart'
    as _i22;
import 'view/src/pages/converter/time/time_controller_listeners.dart' as _i23;
import 'view/src/pages/converter/time/time_converter.dart' as _i26;
import 'view/src/pages/converter/time/time_tab_manager.dart' as _i27;
import 'view/src/pages/home/home_manager.dart' as _i9;
import 'view/src/utils/converters/temperature/celsius_unit_converter.dart'
    as _i3;
import 'view/src/utils/converters/temperature/fahrenheit_unit_converter.dart'
    as _i8;
import 'view/src/utils/converters/temperature/kelvin_unit_converter.dart'
    as _i11;
import 'view/src/utils/converters/time/century_unit_converter.dart' as _i4;
import 'view/src/utils/converters/time/day_unit_converter.dart' as _i6;
import 'view/src/utils/converters/time/decade_unit_converter.dart' as _i7;
import 'view/src/utils/converters/time/hour_unit_converter.dart' as _i10;
import 'view/src/utils/converters/time/microsecond_unit_converter.dart' as _i12;
import 'view/src/utils/converters/time/millisecond_unit_converter.dart' as _i13;
import 'view/src/utils/converters/time/minute_unit_converter.dart' as _i14;
import 'view/src/utils/converters/time/month_unit_converter.dart' as _i15;
import 'view/src/utils/converters/time/nanosecond_unit_converter.dart' as _i16;
import 'view/src/utils/converters/time/second_unit_converter.dart' as _i19;
import 'view/src/utils/converters/time/week_unit_converter.dart' as _i24;
import 'view/src/utils/converters/time/year_unit_converter.dart'
    as _i25; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.CelsiusUnitConverter>(() => _i3.CelsiusUnitConverter());
  gh.lazySingleton<_i4.CenturyUnitConverter>(() => _i4.CenturyUnitConverter());
  gh.factory<_i5.ConverterManager>(() => _i5.ConverterManager());
  gh.lazySingleton<_i6.DayUnitConverter>(() => _i6.DayUnitConverter());
  gh.lazySingleton<_i7.DecadeUnitConverter>(() => _i7.DecadeUnitConverter());
  gh.lazySingleton<_i8.FahrenheitUnitConverter>(
      () => _i8.FahrenheitUnitConverter());
  gh.factory<_i9.HomeManager>(() => _i9.HomeManager());
  gh.lazySingleton<_i10.HourUnitConverter>(() => _i10.HourUnitConverter());
  gh.lazySingleton<_i11.KelvinUnitConverter>(() => _i11.KelvinUnitConverter());
  gh.lazySingleton<_i12.MicrosecondUnitConverter>(
      () => _i12.MicrosecondUnitConverter());
  gh.lazySingleton<_i13.MillisecondUnitConverter>(
      () => _i13.MillisecondUnitConverter());
  gh.lazySingleton<_i14.MinuteUnitConverter>(() => _i14.MinuteUnitConverter());
  gh.lazySingleton<_i15.MonthUnitConverter>(() => _i15.MonthUnitConverter());
  gh.lazySingleton<_i16.NanosecondUnitConverter>(
      () => _i16.NanosecondUnitConverter());
  gh.lazySingleton<_i17.NavigationService>(
      () => _i17.NavigationService(get<_i18.GlobalKey<_i18.NavigatorState>>()));
  gh.lazySingleton<_i19.SecondUnitConverter>(() => _i19.SecondUnitConverter());
  gh.factory<_i20.TemperatureControllerListeners>(
      () => _i20.TemperatureControllerListeners());
  gh.lazySingleton<_i21.TemperatureConverter>(() => _i21.TemperatureConverter(
        get<_i3.CelsiusUnitConverter>(),
        get<_i8.FahrenheitUnitConverter>(),
        get<_i11.KelvinUnitConverter>(),
      ));
  gh.factory<_i22.TemperatureTabManager>(() => _i22.TemperatureTabManager(
        get<_i20.TemperatureControllerListeners>(),
        get<_i21.TemperatureConverter>(),
      ));
  gh.factory<_i23.TimeControllerListeners>(
      () => _i23.TimeControllerListeners());
  gh.lazySingleton<_i24.WeekUnitConverter>(() => _i24.WeekUnitConverter());
  gh.lazySingleton<_i25.YearUnitConverter>(() => _i25.YearUnitConverter());
  gh.lazySingleton<_i26.TimeConverter>(() => _i26.TimeConverter(
        get<_i4.CenturyUnitConverter>(),
        get<_i7.DecadeUnitConverter>(),
        get<_i25.YearUnitConverter>(),
        get<_i15.MonthUnitConverter>(),
        get<_i24.WeekUnitConverter>(),
        get<_i6.DayUnitConverter>(),
        get<_i10.HourUnitConverter>(),
        get<_i14.MinuteUnitConverter>(),
        get<_i19.SecondUnitConverter>(),
        get<_i13.MillisecondUnitConverter>(),
        get<_i12.MicrosecondUnitConverter>(),
        get<_i16.NanosecondUnitConverter>(),
      ));
  gh.factory<_i27.TimeTabManager>(() => _i27.TimeTabManager(
        get<_i23.TimeControllerListeners>(),
        get<_i26.TimeConverter>(),
      ));
  return get;
}
