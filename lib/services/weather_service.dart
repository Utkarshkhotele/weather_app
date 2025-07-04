import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/weather_model.dart';
import '../models/forecast_model.dart';

class WeatherService {
  final String apiKey = 'YOUR_API_KEY_HERE'; // 🔑 Replace with your OpenWeatherMap API key

  /// Fetches current weather data for the given city
  Future<Weather> getWeather(String cityName) async {
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return Weather.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load weather data');
    }
  }

  /// Fetches 5-day forecast data for the given city
  Future<List<Forecast>> get5DayForecast(String cityName) async {
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/forecast?q=$cityName&appid=$apiKey');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List<dynamic> forecastList = data['list'];
      return forecastList
          .map((item) => Forecast.fromJson(item))
          .toList();
    } else {
      throw Exception('Failed to load forecast data');
    }
  }
}
