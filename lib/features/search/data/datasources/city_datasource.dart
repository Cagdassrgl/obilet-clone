import 'package:obilet_clone/core/models/city_model.dart';

abstract class CityDatasource {
  Future<List<CityModel>> getCities();
  Future<CityModel?> getCityById(int id);
  Future<List<CityModel>> searchCities(String query);
}
