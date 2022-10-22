// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/widgets.dart' as _i29;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/services/navigation_service.dart' as _i28;
import 'view/src/pages/converter/converter_manager.dart' as _i6;
import 'view/src/pages/converter/longitude/longitude_controller_listeners.dart'
    as _i16;
import 'view/src/pages/converter/longitude/longitude_converter.dart' as _i38;
import 'view/src/pages/converter/longitude/longitude_tab_manager.dart' as _i39;
import 'view/src/pages/converter/temperature/temperature_controller_listeners.dart'
    as _i31;
import 'view/src/pages/converter/temperature/temperature_converter.dart'
    as _i32;
import 'view/src/pages/converter/temperature/temperature_tab_manager.dart'
    as _i33;
import 'view/src/pages/converter/time/time_controller_listeners.dart' as _i34;
import 'view/src/pages/converter/time/time_converter.dart' as _i40;
import 'view/src/pages/converter/time/time_tab_manager.dart' as _i41;
import 'view/src/pages/home/home_manager.dart' as _i11;
import 'view/src/utils/converters/longitude/centimeter_unit_converter.dart'
    as _i4;
import 'view/src/utils/converters/longitude/foot_unit_converter.dart' as _i10;
import 'view/src/utils/converters/longitude/inch_unit_converter.dart' as _i13;
import 'view/src/utils/converters/longitude/kilometer_unit_converter.dart'
    as _i15;
import 'view/src/utils/converters/longitude/meter_unit_converter.dart' as _i17;
import 'view/src/utils/converters/longitude/micrometer_unit_converter.dart'
    as _i18;
import 'view/src/utils/converters/longitude/mile_unit_converter.dart' as _i20;
import 'view/src/utils/converters/longitude/millimeter_unit_converter.dart'
    as _i21;
import 'view/src/utils/converters/longitude/nanometer_unit_converter.dart'
    as _i25;
import 'view/src/utils/converters/longitude/nautical_mile_unit_converter.dart'
    as _i27;
import 'view/src/utils/converters/longitude/yard_unit_converter.dart' as _i36;
import 'view/src/utils/converters/temperature/celsius_unit_converter.dart'
    as _i3;
import 'view/src/utils/converters/temperature/fahrenheit_unit_converter.dart'
    as _i9;
import 'view/src/utils/converters/temperature/kelvin_unit_converter.dart'
    as _i14;
import 'view/src/utils/converters/time/century_unit_converter.dart' as _i5;
import 'view/src/utils/converters/time/day_unit_converter.dart' as _i7;
import 'view/src/utils/converters/time/decade_unit_converter.dart' as _i8;
import 'view/src/utils/converters/time/hour_unit_converter.dart' as _i12;
import 'view/src/utils/converters/time/microsecond_unit_converter.dart' as _i19;
import 'view/src/utils/converters/time/millisecond_unit_converter.dart' as _i22;
import 'view/src/utils/converters/time/minute_unit_converter.dart' as _i23;
import 'view/src/utils/converters/time/month_unit_converter.dart' as _i24;
import 'view/src/utils/converters/time/nanosecond_unit_converter.dart' as _i26;
import 'view/src/utils/converters/time/second_unit_converter.dart' as _i30;
import 'view/src/utils/converters/time/week_unit_converter.dart' as _i35;
import 'view/src/utils/converters/time/year_unit_converter.dart'
    as _i37; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i4.CentimeterUnitConverter>(
      () => _i4.CentimeterUnitConverter());
  gh.lazySingleton<_i5.CenturyUnitConverter>(() => _i5.CenturyUnitConverter());
  gh.factory<_i6.ConverterManager>(() => _i6.ConverterManager());
  gh.lazySingleton<_i7.DayUnitConverter>(() => _i7.DayUnitConverter());
  gh.lazySingleton<_i8.DecadeUnitConverter>(() => _i8.DecadeUnitConverter());
  gh.lazySingleton<_i9.FahrenheitUnitConverter>(
      () => _i9.FahrenheitUnitConverter());
  gh.lazySingleton<_i10.FootUnitConverter>(() => _i10.FootUnitConverter());
  gh.factory<_i11.HomeManager>(() => _i11.HomeManager());
  gh.lazySingleton<_i12.HourUnitConverter>(() => _i12.HourUnitConverter());
  gh.lazySingleton<_i13.InchUnitConverter>(() => _i13.InchUnitConverter());
  gh.lazySingleton<_i14.KelvinUnitConverter>(() => _i14.KelvinUnitConverter());
  gh.lazySingleton<_i15.KilometerUnitConverter>(
      () => _i15.KilometerUnitConverter());
  gh.factory<_i16.LongitudeControllerListeners>(
      () => _i16.LongitudeControllerListeners());
  gh.lazySingleton<_i17.MeterUnitConverter>(() => _i17.MeterUnitConverter());
  gh.lazySingleton<_i18.MicrometerUnitConverter>(
      () => _i18.MicrometerUnitConverter());
  gh.lazySingleton<_i19.MicrosecondUnitConverter>(
      () => _i19.MicrosecondUnitConverter());
  gh.lazySingleton<_i20.MileUnitConverter>(() => _i20.MileUnitConverter());
  gh.lazySingleton<_i21.MillimeterUnitConverter>(
      () => _i21.MillimeterUnitConverter());
  gh.lazySingleton<_i22.MillisecondUnitConverter>(
      () => _i22.MillisecondUnitConverter());
  gh.lazySingleton<_i23.MinuteUnitConverter>(() => _i23.MinuteUnitConverter());
  gh.lazySingleton<_i24.MonthUnitConverter>(() => _i24.MonthUnitConverter());
  gh.lazySingleton<_i25.NanometerUnitConverter>(
      () => _i25.NanometerUnitConverter());
  gh.lazySingleton<_i26.NanosecondUnitConverter>(
      () => _i26.NanosecondUnitConverter());
  gh.lazySingleton<_i27.NauticalMileUnitConverter>(
      () => _i27.NauticalMileUnitConverter());
  gh.lazySingleton<_i28.NavigationService>(
      () => _i28.NavigationService(get<_i29.GlobalKey<_i29.NavigatorState>>()));
  gh.lazySingleton<_i30.SecondUnitConverter>(() => _i30.SecondUnitConverter());
  gh.factory<_i31.TemperatureControllerListeners>(
      () => _i31.TemperatureControllerListeners());
  gh.lazySingleton<_i32.TemperatureConverter>(() => _i32.TemperatureConverter(
        get<_i3.CelsiusUnitConverter>(),
        get<_i9.FahrenheitUnitConverter>(),
        get<_i14.KelvinUnitConverter>(),
      ));
  gh.factory<_i33.TemperatureTabManager>(() => _i33.TemperatureTabManager(
        get<_i31.TemperatureControllerListeners>(),
        get<_i32.TemperatureConverter>(),
      ));
  gh.factory<_i34.TimeControllerListeners>(
      () => _i34.TimeControllerListeners());
  gh.lazySingleton<_i35.WeekUnitConverter>(() => _i35.WeekUnitConverter());
  gh.lazySingleton<_i36.YardUnitConverter>(() => _i36.YardUnitConverter());
  gh.lazySingleton<_i37.YearUnitConverter>(() => _i37.YearUnitConverter());
  gh.lazySingleton<_i38.LongitudeConverter>(() => _i38.LongitudeConverter(
        get<_i15.KilometerUnitConverter>(),
        get<_i17.MeterUnitConverter>(),
        get<_i4.CentimeterUnitConverter>(),
        get<_i21.MillimeterUnitConverter>(),
        get<_i18.MicrometerUnitConverter>(),
        get<_i25.NanometerUnitConverter>(),
        get<_i20.MileUnitConverter>(),
        get<_i36.YardUnitConverter>(),
        get<_i10.FootUnitConverter>(),
        get<_i13.InchUnitConverter>(),
        get<_i27.NauticalMileUnitConverter>(),
      ));
  gh.factory<_i39.LongitudeTabManager>(() => _i39.LongitudeTabManager(
        get<_i16.LongitudeControllerListeners>(),
        get<_i38.LongitudeConverter>(),
      ));
  gh.lazySingleton<_i40.TimeConverter>(() => _i40.TimeConverter(
        get<_i5.CenturyUnitConverter>(),
        get<_i8.DecadeUnitConverter>(),
        get<_i37.YearUnitConverter>(),
        get<_i24.MonthUnitConverter>(),
        get<_i35.WeekUnitConverter>(),
        get<_i7.DayUnitConverter>(),
        get<_i12.HourUnitConverter>(),
        get<_i23.MinuteUnitConverter>(),
        get<_i30.SecondUnitConverter>(),
        get<_i22.MillisecondUnitConverter>(),
        get<_i19.MicrosecondUnitConverter>(),
        get<_i26.NanosecondUnitConverter>(),
      ));
  gh.factory<_i41.TimeTabManager>(() => _i41.TimeTabManager(
        get<_i34.TimeControllerListeners>(),
        get<_i40.TimeConverter>(),
      ));
  return get;
}
