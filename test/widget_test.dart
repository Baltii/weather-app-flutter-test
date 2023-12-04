// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_application_1/controller/HomeController.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HomeController', () {
    test('getCurrentWeatherData success', () {
      // Arrange
      HomeController homeController = HomeController(city: 'Tunisia');

      // Act
      homeController.getCurrentWeatherData();

      // Assert
      expect(homeController.hasError, isFalse);
      expect(homeController.errorMessage, isEmpty);
      expect(homeController.currentWeatherData, isNotNull);
    });

    test('getCurrentWeatherData error', () {
      // Arrange
      HomeController homeController = HomeController(city: 'zcdzeda');

      // Act
      homeController.getCurrentWeatherData();

      // Assert
      expect(homeController.hasError, isTrue);
      expect(homeController.errorMessage, 'Please enter a valid city name.');
      expect(homeController.currentWeatherData, isNull);
    });

    test('updateWeather', () {
      // Arrange
      HomeController homeController = HomeController(city: 'Tunisia');

      // Act
      homeController.updateWeather();

      // Assert
      expect(homeController.hasError, isFalse);
      expect(homeController.errorMessage, isEmpty);
      expect(homeController.currentWeatherData, isNotNull);
    });

    test('initState', () {
      // Arrange
      HomeController homeController = HomeController(city: 'Tunisia');

      // Act
      homeController.initState();

      // Assert
      expect(homeController.hasError, isFalse);
      expect(homeController.errorMessage, isEmpty);
      expect(homeController.currentWeatherData, isNotNull);
    });
  });
}
