// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/widgets.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/services/navigation_service.dart' as _i8;
import 'view/src/pages/converter/converter_manager.dart' as _i14;
import 'view/src/pages/converter/time/time_controller_listeners.dart' as _i10;
import 'view/src/pages/converter/time/time_converter.dart' as _i13;
import 'view/src/pages/home/home_manager.dart' as _i6;
import 'view/src/utils/converters/time/century_unit_converter.dart' as _i3;
import 'view/src/utils/converters/time/day_unit_converter.dart' as _i4;
import 'view/src/utils/converters/time/decade_unit_converter.dart' as _i5;
import 'view/src/utils/converters/time/month_unit_converter.dart' as _i7;
import 'view/src/utils/converters/time/week_unit_converter.dart' as _i11;
import 'view/src/utils/converters/time/year_unit_converter.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i7.MonthUnitConverter>(() => _i7.MonthUnitConverter());
  gh.lazySingleton<_i8.NavigationService>(
      () => _i8.NavigationService(get<_i9.GlobalKey<_i9.NavigatorState>>()));
  gh.lazySingleton<_i10.TimeControllerListeners>(
      () => _i10.TimeControllerListeners());
  gh.lazySingleton<_i11.WeekUnitConverter>(() => _i11.WeekUnitConverter());
  gh.lazySingleton<_i12.YearUnitConverter>(() => _i12.YearUnitConverter());
  gh.lazySingleton<_i13.TimeConverter>(() => _i13.TimeConverter(
        get<_i3.CenturyUnitConverter>(),
        get<_i5.DecadeUnitConverter>(),
        get<_i12.YearUnitConverter>(),
        get<_i7.MonthUnitConverter>(),
        get<_i11.WeekUnitConverter>(),
        get<_i4.DayUnitConverter>(),
      ));
  gh.factory<_i14.ConverterManager>(() => _i14.ConverterManager(
        get<_i10.TimeControllerListeners>(),
        get<_i13.TimeConverter>(),
      ));
  return get;
}
