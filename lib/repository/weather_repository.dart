import '../models/weather_model.dart';
import '../models/forecast_model.dart';
import '../services/weather_service.dart';

class WeatherRepository {
  final WeatherService weatherService;

  WeatherRepository(this.weatherService);

  Future<Weather> fetchWeather(String cityName) async {
    return await weatherService.getWeather(cityName);
  }

  Future<List<Forecast>> fetchForecast(String cityName) async {
    return await weatherService.get5DayForecast(cityName);
  }
}

