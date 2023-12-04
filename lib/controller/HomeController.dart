import 'package:get/get_state_manager/get_state_manager.dart';
import '/model/current_weather_data.dart';
import '/service/weather_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  String? city;
  String? searchText;

  CurrentWeatherData currentWeatherData = CurrentWeatherData();

  bool hasError = false;
  String errorMessage = '';

  HomeController({required this.city});

  @override
  void onInit() {
    initState();
    super.onInit();
  }

  void updateWeather() {
    initState();
  }

  void initState() {
    getCurrentWeatherData();
  }

  void getCurrentWeatherData() {
    WeatherService(city: '$city').getCurrentWeatherData(
      onSuccess: (data) {
        currentWeatherData = data;
        hasError = false;
        update();
      },
      onError: (error) {
        print(error);
        hasError = true;
        errorMessage = 'Please enter a valid city name.';
        update();
      },
    );
  }
}
