// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/widgets.dart' as _i40;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/services/navigation_service.dart' as _i39;
import 'view/src/pages/converter/converter_manager.dart' as _i6;
import 'view/src/pages/converter/longitude/longitude_controller_listeners.dart'
    as _i22;
import 'view/src/pages/converter/longitude/longitude_converter.dart' as _i57;
import 'view/src/pages/converter/longitude/longitude_tab_manager.dart' as _i58;
import 'view/src/pages/converter/mass/mass_controller_listeners.dart' as _i23;
import 'view/src/pages/converter/mass/mass_converter.dart' as _i59;
import 'view/src/pages/converter/mass/mass_tab_manager.dart' as _i60;
import 'view/src/pages/converter/temperature/temperature_controller_listeners.dart'
    as _i46;
import 'view/src/pages/converter/temperature/temperature_converter.dart'
    as _i47;
import 'view/src/pages/converter/temperature/temperature_tab_manager.dart'
    as _i48;
import 'view/src/pages/converter/time/time_controller_listeners.dart' as _i49;
import 'view/src/pages/converter/time/time_converter.dart' as _i61;
import 'view/src/pages/converter/time/time_tab_manager.dart' as _i62;
import 'view/src/pages/converter/velocity/velocity_controller_listeners.dart'
    as _i51;
import 'view/src/pages/converter/velocity/velocity_converter.dart' as _i52;
import 'view/src/pages/converter/velocity/velocity_tab_manager.dart' as _i53;
import 'view/src/pages/home/home_manager.dart' as _i13;
import 'view/src/utils/converters/longitude/centimeter_unit_converter.dart'
    as _i4;
import 'view/src/utils/converters/longitude/foot_unit_converter.dart' as _i11;
import 'view/src/utils/converters/longitude/inch_unit_converter.dart' as _i15;
import 'view/src/utils/converters/longitude/kilometer_unit_converter.dart'
    as _i19;
import 'view/src/utils/converters/longitude/meter_unit_converter.dart' as _i25;
import 'view/src/utils/converters/longitude/micrometer_unit_converter.dart'
    as _i27;
import 'view/src/utils/converters/longitude/mile_unit_converter.dart' as _i30;
import 'view/src/utils/converters/longitude/millimeter_unit_converter.dart'
    as _i32;
import 'view/src/utils/converters/longitude/nanometer_unit_converter.dart'
    as _i36;
import 'view/src/utils/converters/longitude/nautical_mile_unit_converter.dart'
    as _i38;
import 'view/src/utils/converters/longitude/yard_unit_converter.dart' as _i55;
import 'view/src/utils/converters/mass/gram_unit_converter.dart' as _i12;
import 'view/src/utils/converters/mass/kilogram_unit_converter.dart' as _i17;
import 'view/src/utils/converters/mass/long_ton_unit_converter.dart' as _i21;
import 'view/src/utils/converters/mass/microgram_unit_converter.dart' as _i26;
import 'view/src/utils/converters/mass/milligram_unit_converter.dart' as _i31;
import 'view/src/utils/converters/mass/ounce_unit_converter.dart' as _i41;
import 'view/src/utils/converters/mass/pound_unit_converter.dart' as _i42;
import 'view/src/utils/converters/mass/short_ton_unit_converter.dart' as _i44;
import 'view/src/utils/converters/mass/stone_unit_converter.dart' as _i45;
import 'view/src/utils/converters/mass/ton_unit_converter.dart' as _i50;
import 'view/src/utils/converters/temperature/celsius_unit_converter.dart'
    as _i3;
import 'view/src/utils/converters/temperature/fahrenheit_unit_converter.dart'
    as _i9;
import 'view/src/utils/converters/temperature/kelvin_unit_converter.dart'
    as _i16;
import 'view/src/utils/converters/time/century_unit_converter.dart' as _i5;
import 'view/src/utils/converters/time/day_unit_converter.dart' as _i7;
import 'view/src/utils/converters/time/decade_unit_converter.dart' as _i8;
import 'view/src/utils/converters/time/hour_unit_converter.dart' as _i14;
import 'view/src/utils/converters/time/microsecond_unit_converter.dart' as _i28;
import 'view/src/utils/converters/time/millisecond_unit_converter.dart' as _i33;
import 'view/src/utils/converters/time/minute_unit_converter.dart' as _i34;
import 'view/src/utils/converters/time/month_unit_converter.dart' as _i35;
import 'view/src/utils/converters/time/nanosecond_unit_converter.dart' as _i37;
import 'view/src/utils/converters/time/second_unit_converter.dart' as _i43;
import 'view/src/utils/converters/time/week_unit_converter.dart' as _i54;
import 'view/src/utils/converters/time/year_unit_converter.dart' as _i56;
import 'view/src/utils/converters/velocity/foot_per_second_unit_converter.dart'
    as _i10;
import 'view/src/utils/converters/velocity/kilometer_per_hour_unit_converter.dart'
    as _i18;
import 'view/src/utils/converters/velocity/knot_unit_converter.dart' as _i20;
import 'view/src/utils/converters/velocity/meter_per_second_unit_converter.dart'
    as _i24;
import 'view/src/utils/converters/velocity/mile_per_hour_unit_converter.dart'
    as _i29; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i10.FootPerSecondUnitConverter>(
      () => _i10.FootPerSecondUnitConverter());
  gh.lazySingleton<_i11.FootUnitConverter>(() => _i11.FootUnitConverter());
  gh.lazySingleton<_i12.GramUnitConverter>(() => _i12.GramUnitConverter());
  gh.factory<_i13.HomeManager>(() => _i13.HomeManager());
  gh.lazySingleton<_i14.HourUnitConverter>(() => _i14.HourUnitConverter());
  gh.lazySingleton<_i15.InchUnitConverter>(() => _i15.InchUnitConverter());
  gh.lazySingleton<_i16.KelvinUnitConverter>(() => _i16.KelvinUnitConverter());
  gh.lazySingleton<_i17.KilogramUnitConverter>(
      () => _i17.KilogramUnitConverter());
  gh.lazySingleton<_i18.KilometerPerHourUnitConverter>(
      () => _i18.KilometerPerHourUnitConverter());
  gh.lazySingleton<_i19.KilometerUnitConverter>(
      () => _i19.KilometerUnitConverter());
  gh.lazySingleton<_i20.KnotUnitConverter>(() => _i20.KnotUnitConverter());
  gh.lazySingleton<_i21.LongTonUnitConverter>(
      () => _i21.LongTonUnitConverter());
  gh.factory<_i22.LongitudeControllerListeners>(
      () => _i22.LongitudeControllerListeners());
  gh.factory<_i23.MassControllerListeners>(
      () => _i23.MassControllerListeners());
  gh.lazySingleton<_i24.MeterPerSecondUnitConverter>(
      () => _i24.MeterPerSecondUnitConverter());
  gh.lazySingleton<_i25.MeterUnitConverter>(() => _i25.MeterUnitConverter());
  gh.lazySingleton<_i26.MicrogramUnitConverter>(
      () => _i26.MicrogramUnitConverter());
  gh.lazySingleton<_i27.MicrometerUnitConverter>(
      () => _i27.MicrometerUnitConverter());
  gh.lazySingleton<_i28.MicrosecondUnitConverter>(
      () => _i28.MicrosecondUnitConverter());
  gh.lazySingleton<_i29.MilePerHourUnitConverter>(
      () => _i29.MilePerHourUnitConverter());
  gh.lazySingleton<_i30.MileUnitConverter>(() => _i30.MileUnitConverter());
  gh.lazySingleton<_i31.MilligramUnitConverter>(
      () => _i31.MilligramUnitConverter());
  gh.lazySingleton<_i32.MillimeterUnitConverter>(
      () => _i32.MillimeterUnitConverter());
  gh.lazySingleton<_i33.MillisecondUnitConverter>(
      () => _i33.MillisecondUnitConverter());
  gh.lazySingleton<_i34.MinuteUnitConverter>(() => _i34.MinuteUnitConverter());
  gh.lazySingleton<_i35.MonthUnitConverter>(() => _i35.MonthUnitConverter());
  gh.lazySingleton<_i36.NanometerUnitConverter>(
      () => _i36.NanometerUnitConverter());
  gh.lazySingleton<_i37.NanosecondUnitConverter>(
      () => _i37.NanosecondUnitConverter());
  gh.lazySingleton<_i38.NauticalMileUnitConverter>(
      () => _i38.NauticalMileUnitConverter());
  gh.lazySingleton<_i39.NavigationService>(
      () => _i39.NavigationService(get<_i40.GlobalKey<_i40.NavigatorState>>()));
  gh.lazySingleton<_i41.OunceUnitConverter>(() => _i41.OunceUnitConverter());
  gh.lazySingleton<_i42.PoundUnitConverter>(() => _i42.PoundUnitConverter());
  gh.lazySingleton<_i43.SecondUnitConverter>(() => _i43.SecondUnitConverter());
  gh.lazySingleton<_i44.ShortTonUnitConverter>(
      () => _i44.ShortTonUnitConverter());
  gh.lazySingleton<_i45.StoneUnitConverter>(() => _i45.StoneUnitConverter());
  gh.factory<_i46.TemperatureControllerListeners>(
      () => _i46.TemperatureControllerListeners());
  gh.lazySingleton<_i47.TemperatureConverter>(() => _i47.TemperatureConverter(
        get<_i3.CelsiusUnitConverter>(),
        get<_i9.FahrenheitUnitConverter>(),
        get<_i16.KelvinUnitConverter>(),
      ));
  gh.factory<_i48.TemperatureTabManager>(() => _i48.TemperatureTabManager(
        get<_i46.TemperatureControllerListeners>(),
        get<_i47.TemperatureConverter>(),
      ));
  gh.factory<_i49.TimeControllerListeners>(
      () => _i49.TimeControllerListeners());
  gh.lazySingleton<_i50.TonUnitConverter>(() => _i50.TonUnitConverter());
  gh.factory<_i51.VelocityControllerListeners>(
      () => _i51.VelocityControllerListeners());
  gh.lazySingleton<_i52.VelocityConverter>(() => _i52.VelocityConverter(
        get<_i29.MilePerHourUnitConverter>(),
        get<_i10.FootPerSecondUnitConverter>(),
        get<_i18.KilometerPerHourUnitConverter>(),
        get<_i24.MeterPerSecondUnitConverter>(),
        get<_i20.KnotUnitConverter>(),
      ));
  gh.factory<_i53.VelocityTabManager>(() => _i53.VelocityTabManager(
        get<_i51.VelocityControllerListeners>(),
        get<_i52.VelocityConverter>(),
      ));
  gh.lazySingleton<_i54.WeekUnitConverter>(() => _i54.WeekUnitConverter());
  gh.lazySingleton<_i55.YardUnitConverter>(() => _i55.YardUnitConverter());
  gh.lazySingleton<_i56.YearUnitConverter>(() => _i56.YearUnitConverter());
  gh.lazySingleton<_i57.LongitudeConverter>(() => _i57.LongitudeConverter(
        get<_i19.KilometerUnitConverter>(),
        get<_i25.MeterUnitConverter>(),
        get<_i4.CentimeterUnitConverter>(),
        get<_i32.MillimeterUnitConverter>(),
        get<_i27.MicrometerUnitConverter>(),
        get<_i36.NanometerUnitConverter>(),
        get<_i30.MileUnitConverter>(),
        get<_i55.YardUnitConverter>(),
        get<_i11.FootUnitConverter>(),
        get<_i15.InchUnitConverter>(),
        get<_i38.NauticalMileUnitConverter>(),
      ));
  gh.factory<_i58.LongitudeTabManager>(() => _i58.LongitudeTabManager(
        get<_i22.LongitudeControllerListeners>(),
        get<_i57.LongitudeConverter>(),
      ));
  gh.lazySingleton<_i59.MassConverter>(() => _i59.MassConverter(
        get<_i50.TonUnitConverter>(),
        get<_i17.KilogramUnitConverter>(),
        get<_i12.GramUnitConverter>(),
        get<_i31.MilligramUnitConverter>(),
        get<_i26.MicrogramUnitConverter>(),
        get<_i21.LongTonUnitConverter>(),
        get<_i44.ShortTonUnitConverter>(),
        get<_i45.StoneUnitConverter>(),
        get<_i42.PoundUnitConverter>(),
        get<_i41.OunceUnitConverter>(),
      ));
  gh.factory<_i60.MassTabManager>(() => _i60.MassTabManager(
        get<_i23.MassControllerListeners>(),
        get<_i59.MassConverter>(),
      ));
  gh.lazySingleton<_i61.TimeConverter>(() => _i61.TimeConverter(
        get<_i5.CenturyUnitConverter>(),
        get<_i8.DecadeUnitConverter>(),
        get<_i56.YearUnitConverter>(),
        get<_i35.MonthUnitConverter>(),
        get<_i54.WeekUnitConverter>(),
        get<_i7.DayUnitConverter>(),
        get<_i14.HourUnitConverter>(),
        get<_i34.MinuteUnitConverter>(),
        get<_i43.SecondUnitConverter>(),
        get<_i33.MillisecondUnitConverter>(),
        get<_i28.MicrosecondUnitConverter>(),
        get<_i37.NanosecondUnitConverter>(),
      ));
  gh.factory<_i62.TimeTabManager>(() => _i62.TimeTabManager(
        get<_i49.TimeControllerListeners>(),
        get<_i61.TimeConverter>(),
      ));
  return get;
}
