import 'constants.dart';
import 'style/media.dart';

enum Converter {
  longitude(
    Constants.longitudeCategoryId,
    Media.icLongitude,
    'Longitude',
  ),
  mass(
    Constants.massCategoryId,
    Media.icMass,
    'Mass',
  ),
  time(
    Constants.timeCategoryId,
    Media.icTime,
    'Time',
  ),
  temperature(
    Constants.temperatureCategoryId,
    Media.icTemperature,
    'Temperature',
  ),
  area(
    Constants.moneyCategoryId,
    Media.icMoney,
    'Money',
  ),
  volume(
    Constants.velocityCategoryId,
    Media.icVelocity,
    'Velocity',
  );

  final int id;
  final String icon;
  final String name;

  const Converter(this.id, this.icon, this.name);
}
