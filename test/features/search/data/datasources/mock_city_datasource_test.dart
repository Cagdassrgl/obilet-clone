import 'package:flutter_test/flutter_test.dart';
import 'package:obilet_clone/features/search/data/datasources/mock_city_datasource.dart';

void main() {
  group('MockCityDatasource Tests', () {
    late MockCityDatasource datasource;

    setUp(() {
      datasource = MockCityDatasource();
    });

    test('should return all 81 Turkish cities', () async {
      final cities = await datasource.getCities();

      expect(cities.length, 81);
      expect(cities.first.name, 'Adana');
      expect(cities.first.plateCode, '01');
      expect(cities.last.name, 'Düzce');
      expect(cities.last.plateCode, '81');
    });

    test('should find city by id', () async {
      final city = await datasource.getCityById(34);

      expect(city, isNotNull);
      expect(city!.name, 'İstanbul');
      expect(city.plateCode, '34');
    });

    test('should return null for non-existent city id', () async {
      final city = await datasource.getCityById(999);

      expect(city, isNull);
    });

    test('should search cities by name', () async {
      final cities = await datasource.searchCities('ank');

      expect(cities.length, 2); // Ankara and Çankırı
      expect(cities.any((city) => city.name == 'Ankara'), true);
      expect(cities.any((city) => city.name == 'Çankırı'), true);
    });

    test('should search cities by plate code', () async {
      final cities = await datasource.searchCities('06');

      expect(cities.length, 1);
      expect(cities.first.name, 'Ankara');
    });

    test('should return all cities for empty search query', () async {
      final cities = await datasource.searchCities('');

      expect(cities.length, 81);
    });
  });
}
