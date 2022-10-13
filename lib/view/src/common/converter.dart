import 'style/media.dart';

enum Converter {
  longitude(Media.icLongitude, 'Longitude'),
  mass(Media.icMass, 'Mass'),
  time(Media.icTime, 'Time'),
  temperature(Media.icTemperature, 'Temperature'),
  area(Media.icArea, 'Area'),
  volume(Media.icVolume, 'Volume');

  final String icon;
  final String name;

  const Converter(this.icon, this.name);
}
