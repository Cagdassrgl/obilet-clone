import 'package:obilet_clone/features/search/data/datasources/city_datasource.dart';
import 'package:obilet_clone/features/search/domain/entities/city_entity.dart';
import 'package:obilet_clone/features/search/domain/repositories/city_repository.dart';

class CityRepositoryImpl implements CityRepository {
  const CityRepositoryImpl({required this.datasource});

  final CityDatasource datasource;

  @override
  Future<List<CityEntity>> getCities() async {
    try {
      final cities = await datasource.getCities();
      return cities.map((city) => CityEntity.fromModel(city)).toList();
    } catch (e) {
      throw Exception('Failed to get cities: $e');
    }
  }

  @override
  Future<CityEntity?> getCityById(int id) async {
    try {
      final city = await datasource.getCityById(id);
      return city != null ? CityEntity.fromModel(city) : null;
    } catch (e) {
      throw Exception('Failed to get city by id: $e');
    }
  }

  @override
  Future<List<CityEntity>> searchCities(String query) async {
    try {
      final cities = await datasource.searchCities(query);
      return cities.map((city) => CityEntity.fromModel(city)).toList();
    } catch (e) {
      throw Exception('Failed to search cities: $e');
    }
  }
}
