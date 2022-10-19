enum TemperatureUnitType {
  celsius(
    name: 'celsius',
    fromCelsius: '',
    fromFahrenheit: '- 32) * 5/9',
    fromKelvin: '- 273.15',
  ),
  fahrenheit(
    name: 'fahrenheit',
    fromCelsius: '* 9/5) + 32',
    fromFahrenheit: '',
    fromKelvin: '- 273.15) * 9/5 + 32',
  ),
  kelvin(
    name: 'kelvin',
    fromCelsius: '+ 273.15',
    fromFahrenheit: '- 32) * 5/9 + 273.15',
    fromKelvin: '',
  );

  const TemperatureUnitType({
    required this.name,
    required this.fromCelsius,
    required this.fromFahrenheit,
    required this.fromKelvin,
  });

  final String name;
  final String fromCelsius;
  final String fromFahrenheit;
  final String fromKelvin;
}
