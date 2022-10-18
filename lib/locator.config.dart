// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/widgets.dart' as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/services/navigation_service.dart' as _i13;
import 'view/src/pages/converter/converter_manager.dart' as _i20;
import 'view/src/pages/converter/time/time_controller_listeners.dart' as _i16;
import 'view/src/pages/converter/time/time_converter.dart' as _i19;
import 'view/src/pages/home/home_manager.dart' as _i6;
import 'view/src/utils/converters/time/century_unit_converter.dart' as _i3;
import 'view/src/utils/converters/time/day_unit_converter.dart' as _i4;
import 'view/src/utils/converters/time/decade_unit_converter.dart' as _i5;
import 'view/src/utils/converters/time/hour_unit_converter.dart' as _i7;
import 'view/src/utils/converters/time/microsecond_unit_converter.dart' as _i8;
import 'view/src/utils/converters/time/millisecond_unit_converter.dart' as _i9;
import 'view/src/utils/converters/time/minute_unit_converter.dart' as _i10;
import 'view/src/utils/converters/time/month_unit_converter.dart' as _i11;
import 'view/src/utils/converters/time/nanosecond_unit_converter.dart' as _i12;
import 'view/src/utils/converters/time/second_unit_converter.dart' as _i15;
import 'view/src/utils/converters/time/week_unit_converter.dart' as _i17;
import 'view/src/utils/converters/time/year_unit_converter.dart'
    as _i18; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i3.CenturyUnitConverter>(() => _i3.CenturyUnitConverter());
  gh.lazySingleton<_i4.DayUnitConverter>(() => _i4.DayUnitConverter());
  gh.lazySingleton<_i5.DecadeUnitConverter>(() => _i5.DecadeUnitConverter());
  gh.factory<_i6.HomeManager>(() => _i6.HomeManager());
  gh.lazySingleton<_i7.HourUnitConverter>(() => _i7.HourUnitConverter());
  gh.lazySingleton<_i8.MicrosecondUnitConverter>(
      () => _i8.MicrosecondUnitConverter());
  gh.lazySingleton<_i9.MillisecondUnitConverter>(
      () => _i9.MillisecondUnitConverter());
  gh.lazySingleton<_i10.MinuteUnitConverter>(() => _i10.MinuteUnitConverter());
  gh.lazySingleton<_i11.MonthUnitConverter>(() => _i11.MonthUnitConverter());
  gh.lazySingleton<_i12.NanosecondUnitConverter>(
      () => _i12.NanosecondUnitConverter());
  gh.lazySingleton<_i13.NavigationService>(
      () => _i13.NavigationService(get<_i14.GlobalKey<_i14.NavigatorState>>()));
  gh.lazySingleton<_i15.SecondUnitConverter>(() => _i15.SecondUnitConverter());
  gh.factory<_i16.TimeControllerListeners>(
      () => _i16.TimeControllerListeners());
  gh.lazySingleton<_i17.WeekUnitConverter>(() => _i17.WeekUnitConverter());
  gh.lazySingleton<_i18.YearUnitConverter>(() => _i18.YearUnitConverter());
  gh.lazySingleton<_i19.TimeConverter>(() => _i19.TimeConverter(
        get<_i3.CenturyUnitConverter>(),
        get<_i5.DecadeUnitConverter>(),
        get<_i18.YearUnitConverter>(),
        get<_i11.MonthUnitConverter>(),
        get<_i17.WeekUnitConverter>(),
        get<_i4.DayUnitConverter>(),
        get<_i7.HourUnitConverter>(),
        get<_i10.MinuteUnitConverter>(),
        get<_i15.SecondUnitConverter>(),
        get<_i9.MillisecondUnitConverter>(),
        get<_i8.MicrosecondUnitConverter>(),
        get<_i12.NanosecondUnitConverter>(),
      ));
  gh.factory<_i20.ConverterManager>(() => _i20.ConverterManager(
        get<_i16.TimeControllerListeners>(),
        get<_i19.TimeConverter>(),
      ));
  return get;
}
