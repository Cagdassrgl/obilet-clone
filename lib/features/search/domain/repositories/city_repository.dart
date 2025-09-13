import 'package:obilet_clone/features/search/domain/entities/city_entity.dart';

abstract class CityRepository {
  Future<List<CityEntity>> getCities();
  Future<CityEntity?> getCityById(int id);
  Future<List<CityEntity>> searchCities(String query);
}
