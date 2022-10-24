// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/widgets.dart' as _i43;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/services/navigation_service.dart' as _i42;
import 'view/src/pages/converter/converter_manager.dart' as _i6;
import 'view/src/pages/converter/longitude/longitude_controller_listeners.dart'
    as _i24;
import 'view/src/pages/converter/longitude/longitude_converter.dart' as _i62;
import 'view/src/pages/converter/longitude/longitude_tab_manager.dart' as _i63;
import 'view/src/pages/converter/mass/mass_controller_listeners.dart' as _i25;
import 'view/src/pages/converter/mass/mass_converter.dart' as _i64;
import 'view/src/pages/converter/mass/mass_tab_manager.dart' as _i65;
import 'view/src/pages/converter/money/money_controller_listeners.dart' as _i37;
import 'view/src/pages/converter/money/money_converter.dart' as _i66;
import 'view/src/pages/converter/money/money_tab_manager.dart' as _i67;
import 'view/src/pages/converter/temperature/temperature_controller_listeners.dart'
    as _i50;
import 'view/src/pages/converter/temperature/temperature_converter.dart'
    as _i51;
import 'view/src/pages/converter/temperature/temperature_tab_manager.dart'
    as _i52;
import 'view/src/pages/converter/time/time_controller_listeners.dart' as _i53;
import 'view/src/pages/converter/time/time_converter.dart' as _i68;
import 'view/src/pages/converter/time/time_tab_manager.dart' as _i69;
import 'view/src/pages/converter/velocity/velocity_controller_listeners.dart'
    as _i55;
import 'view/src/pages/converter/velocity/velocity_converter.dart' as _i56;
import 'view/src/pages/converter/velocity/velocity_tab_manager.dart' as _i57;
import 'view/src/pages/home/home_manager.dart' as _i15;
import 'view/src/utils/converters/longitude/centimeter_unit_converter.dart'
    as _i4;
import 'view/src/utils/converters/longitude/foot_unit_converter.dart' as _i13;
import 'view/src/utils/converters/longitude/inch_unit_converter.dart' as _i17;
import 'view/src/utils/converters/longitude/kilometer_unit_converter.dart'
    as _i21;
import 'view/src/utils/converters/longitude/meter_unit_converter.dart' as _i27;
import 'view/src/utils/converters/longitude/micrometer_unit_converter.dart'
    as _i29;
import 'view/src/utils/converters/longitude/mile_unit_converter.dart' as _i32;
import 'view/src/utils/converters/longitude/millimeter_unit_converter.dart'
    as _i34;
import 'view/src/utils/converters/longitude/nanometer_unit_converter.dart'
    as _i39;
import 'view/src/utils/converters/longitude/nautical_mile_unit_converter.dart'
    as _i41;
import 'view/src/utils/converters/longitude/yard_unit_converter.dart' as _i59;
import 'view/src/utils/converters/mass/gram_unit_converter.dart' as _i14;
import 'view/src/utils/converters/mass/kilogram_unit_converter.dart' as _i19;
import 'view/src/utils/converters/mass/long_ton_unit_converter.dart' as _i23;
import 'view/src/utils/converters/mass/microgram_unit_converter.dart' as _i28;
import 'view/src/utils/converters/mass/milligram_unit_converter.dart' as _i33;
import 'view/src/utils/converters/mass/ounce_unit_converter.dart' as _i44;
import 'view/src/utils/converters/mass/pound_unit_converter.dart' as _i46;
import 'view/src/utils/converters/mass/short_ton_unit_converter.dart' as _i48;
import 'view/src/utils/converters/mass/stone_unit_converter.dart' as _i49;
import 'view/src/utils/converters/mass/ton_unit_converter.dart' as _i54;
import 'view/src/utils/converters/money/dollar_unit_converter.dart' as _i9;
import 'view/src/utils/converters/money/euro_unit_converter.dart' as _i10;
import 'view/src/utils/converters/money/peseta_unit_converter.dart' as _i45;
import 'view/src/utils/converters/money/yen_unit_converter.dart' as _i61;
import 'view/src/utils/converters/temperature/celsius_unit_converter.dart'
    as _i3;
import 'view/src/utils/converters/temperature/fahrenheit_unit_converter.dart'
    as _i11;
import 'view/src/utils/converters/temperature/kelvin_unit_converter.dart'
    as _i18;
import 'view/src/utils/converters/time/century_unit_converter.dart' as _i5;
import 'view/src/utils/converters/time/day_unit_converter.dart' as _i7;
import 'view/src/utils/converters/time/decade_unit_converter.dart' as _i8;
import 'view/src/utils/converters/time/hour_unit_converter.dart' as _i16;
import 'view/src/utils/converters/time/microsecond_unit_converter.dart' as _i30;
import 'view/src/utils/converters/time/millisecond_unit_converter.dart' as _i35;
import 'view/src/utils/converters/time/minute_unit_converter.dart' as _i36;
import 'view/src/utils/converters/time/month_unit_converter.dart' as _i38;
import 'view/src/utils/converters/time/nanosecond_unit_converter.dart' as _i40;
import 'view/src/utils/converters/time/second_unit_converter.dart' as _i47;
import 'view/src/utils/converters/time/week_unit_converter.dart' as _i58;
import 'view/src/utils/converters/time/year_unit_converter.dart' as _i60;
import 'view/src/utils/converters/velocity/foot_per_second_unit_converter.dart'
    as _i12;
import 'view/src/utils/converters/velocity/kilometer_per_hour_unit_converter.dart'
    as _i20;
import 'view/src/utils/converters/velocity/knot_unit_converter.dart' as _i22;
import 'view/src/utils/converters/velocity/meter_per_second_unit_converter.dart'
    as _i26;
import 'view/src/utils/converters/velocity/mile_per_hour_unit_converter.dart'
    as _i31; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i9.DollarUnitConverter>(() => _i9.DollarUnitConverter());
  gh.lazySingleton<_i10.EuroUnitConverter>(() => _i10.EuroUnitConverter());
  gh.lazySingleton<_i11.FahrenheitUnitConverter>(
      () => _i11.FahrenheitUnitConverter());
  gh.lazySingleton<_i12.FootPerSecondUnitConverter>(
      () => _i12.FootPerSecondUnitConverter());
  gh.lazySingleton<_i13.FootUnitConverter>(() => _i13.FootUnitConverter());
  gh.lazySingleton<_i14.GramUnitConverter>(() => _i14.GramUnitConverter());
  gh.factory<_i15.HomeManager>(() => _i15.HomeManager());
  gh.lazySingleton<_i16.HourUnitConverter>(() => _i16.HourUnitConverter());
  gh.lazySingleton<_i17.InchUnitConverter>(() => _i17.InchUnitConverter());
  gh.lazySingleton<_i18.KelvinUnitConverter>(() => _i18.KelvinUnitConverter());
  gh.lazySingleton<_i19.KilogramUnitConverter>(
      () => _i19.KilogramUnitConverter());
  gh.lazySingleton<_i20.KilometerPerHourUnitConverter>(
      () => _i20.KilometerPerHourUnitConverter());
  gh.lazySingleton<_i21.KilometerUnitConverter>(
      () => _i21.KilometerUnitConverter());
  gh.lazySingleton<_i22.KnotUnitConverter>(() => _i22.KnotUnitConverter());
  gh.lazySingleton<_i23.LongTonUnitConverter>(
      () => _i23.LongTonUnitConverter());
  gh.factory<_i24.LongitudeControllerListeners>(
      () => _i24.LongitudeControllerListeners());
  gh.factory<_i25.MassControllerListeners>(
      () => _i25.MassControllerListeners());
  gh.lazySingleton<_i26.MeterPerSecondUnitConverter>(
      () => _i26.MeterPerSecondUnitConverter());
  gh.lazySingleton<_i27.MeterUnitConverter>(() => _i27.MeterUnitConverter());
  gh.lazySingleton<_i28.MicrogramUnitConverter>(
      () => _i28.MicrogramUnitConverter());
  gh.lazySingleton<_i29.MicrometerUnitConverter>(
      () => _i29.MicrometerUnitConverter());
  gh.lazySingleton<_i30.MicrosecondUnitConverter>(
      () => _i30.MicrosecondUnitConverter());
  gh.lazySingleton<_i31.MilePerHourUnitConverter>(
      () => _i31.MilePerHourUnitConverter());
  gh.lazySingleton<_i32.MileUnitConverter>(() => _i32.MileUnitConverter());
  gh.lazySingleton<_i33.MilligramUnitConverter>(
      () => _i33.MilligramUnitConverter());
  gh.lazySingleton<_i34.MillimeterUnitConverter>(
      () => _i34.MillimeterUnitConverter());
  gh.lazySingleton<_i35.MillisecondUnitConverter>(
      () => _i35.MillisecondUnitConverter());
  gh.lazySingleton<_i36.MinuteUnitConverter>(() => _i36.MinuteUnitConverter());
  gh.factory<_i37.MoneyControllerListeners>(
      () => _i37.MoneyControllerListeners());
  gh.lazySingleton<_i38.MonthUnitConverter>(() => _i38.MonthUnitConverter());
  gh.lazySingleton<_i39.NanometerUnitConverter>(
      () => _i39.NanometerUnitConverter());
  gh.lazySingleton<_i40.NanosecondUnitConverter>(
      () => _i40.NanosecondUnitConverter());
  gh.lazySingleton<_i41.NauticalMileUnitConverter>(
      () => _i41.NauticalMileUnitConverter());
  gh.lazySingleton<_i42.NavigationService>(
      () => _i42.NavigationService(get<_i43.GlobalKey<_i43.NavigatorState>>()));
  gh.lazySingleton<_i44.OunceUnitConverter>(() => _i44.OunceUnitConverter());
  gh.lazySingleton<_i45.PesetaUnitConverter>(() => _i45.PesetaUnitConverter());
  gh.lazySingleton<_i46.PoundUnitConverter>(() => _i46.PoundUnitConverter());
  gh.lazySingleton<_i47.SecondUnitConverter>(() => _i47.SecondUnitConverter());
  gh.lazySingleton<_i48.ShortTonUnitConverter>(
      () => _i48.ShortTonUnitConverter());
  gh.lazySingleton<_i49.StoneUnitConverter>(() => _i49.StoneUnitConverter());
  gh.factory<_i50.TemperatureControllerListeners>(
      () => _i50.TemperatureControllerListeners());
  gh.lazySingleton<_i51.TemperatureConverter>(() => _i51.TemperatureConverter(
        get<_i3.CelsiusUnitConverter>(),
        get<_i11.FahrenheitUnitConverter>(),
        get<_i18.KelvinUnitConverter>(),
      ));
  gh.factory<_i52.TemperatureTabManager>(() => _i52.TemperatureTabManager(
        get<_i50.TemperatureControllerListeners>(),
        get<_i51.TemperatureConverter>(),
      ));
  gh.factory<_i53.TimeControllerListeners>(
      () => _i53.TimeControllerListeners());
  gh.lazySingleton<_i54.TonUnitConverter>(() => _i54.TonUnitConverter());
  gh.factory<_i55.VelocityControllerListeners>(
      () => _i55.VelocityControllerListeners());
  gh.lazySingleton<_i56.VelocityConverter>(() => _i56.VelocityConverter(
        get<_i31.MilePerHourUnitConverter>(),
        get<_i12.FootPerSecondUnitConverter>(),
        get<_i20.KilometerPerHourUnitConverter>(),
        get<_i26.MeterPerSecondUnitConverter>(),
        get<_i22.KnotUnitConverter>(),
      ));
  gh.factory<_i57.VelocityTabManager>(() => _i57.VelocityTabManager(
        get<_i55.VelocityControllerListeners>(),
        get<_i56.VelocityConverter>(),
      ));
  gh.lazySingleton<_i58.WeekUnitConverter>(() => _i58.WeekUnitConverter());
  gh.lazySingleton<_i59.YardUnitConverter>(() => _i59.YardUnitConverter());
  gh.lazySingleton<_i60.YearUnitConverter>(() => _i60.YearUnitConverter());
  gh.lazySingleton<_i61.YenUnitConverter>(() => _i61.YenUnitConverter());
  gh.lazySingleton<_i62.LongitudeConverter>(() => _i62.LongitudeConverter(
        get<_i21.KilometerUnitConverter>(),
        get<_i27.MeterUnitConverter>(),
        get<_i4.CentimeterUnitConverter>(),
        get<_i34.MillimeterUnitConverter>(),
        get<_i29.MicrometerUnitConverter>(),
        get<_i39.NanometerUnitConverter>(),
        get<_i32.MileUnitConverter>(),
        get<_i59.YardUnitConverter>(),
        get<_i13.FootUnitConverter>(),
        get<_i17.InchUnitConverter>(),
        get<_i41.NauticalMileUnitConverter>(),
      ));
  gh.factory<_i63.LongitudeTabManager>(() => _i63.LongitudeTabManager(
        get<_i24.LongitudeControllerListeners>(),
        get<_i62.LongitudeConverter>(),
      ));
  gh.lazySingleton<_i64.MassConverter>(() => _i64.MassConverter(
        get<_i54.TonUnitConverter>(),
        get<_i19.KilogramUnitConverter>(),
        get<_i14.GramUnitConverter>(),
        get<_i33.MilligramUnitConverter>(),
        get<_i28.MicrogramUnitConverter>(),
        get<_i23.LongTonUnitConverter>(),
        get<_i48.ShortTonUnitConverter>(),
        get<_i49.StoneUnitConverter>(),
        get<_i46.PoundUnitConverter>(),
        get<_i44.OunceUnitConverter>(),
      ));
  gh.factory<_i65.MassTabManager>(() => _i65.MassTabManager(
        get<_i25.MassControllerListeners>(),
        get<_i64.MassConverter>(),
      ));
  gh.lazySingleton<_i66.MoneyConverter>(() => _i66.MoneyConverter(
        get<_i10.EuroUnitConverter>(),
        get<_i45.PesetaUnitConverter>(),
        get<_i9.DollarUnitConverter>(),
        get<_i61.YenUnitConverter>(),
      ));
  gh.factory<_i67.MoneyTabManager>(() => _i67.MoneyTabManager(
        get<_i37.MoneyControllerListeners>(),
        get<_i66.MoneyConverter>(),
      ));
  gh.lazySingleton<_i68.TimeConverter>(() => _i68.TimeConverter(
        get<_i5.CenturyUnitConverter>(),
        get<_i8.DecadeUnitConverter>(),
        get<_i60.YearUnitConverter>(),
        get<_i38.MonthUnitConverter>(),
        get<_i58.WeekUnitConverter>(),
        get<_i7.DayUnitConverter>(),
        get<_i16.HourUnitConverter>(),
        get<_i36.MinuteUnitConverter>(),
        get<_i47.SecondUnitConverter>(),
        get<_i35.MillisecondUnitConverter>(),
        get<_i30.MicrosecondUnitConverter>(),
        get<_i40.NanosecondUnitConverter>(),
      ));
  gh.factory<_i69.TimeTabManager>(() => _i69.TimeTabManager(
        get<_i53.TimeControllerListeners>(),
        get<_i68.TimeConverter>(),
      ));
  return get;
}
