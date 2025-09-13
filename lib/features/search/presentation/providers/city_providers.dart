import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:obilet_clone/features/search/data/datasources/city_datasource.dart';
import 'package:obilet_clone/features/search/data/datasources/mock_city_datasource.dart';
import 'package:obilet_clone/features/search/data/repositories/city_repository_impl.dart';
import 'package:obilet_clone/features/search/domain/repositories/city_repository.dart';
import 'package:obilet_clone/features/search/domain/usecases/get_cities_usecase.dart';
import 'package:obilet_clone/features/search/domain/usecases/get_city_by_id_usecase.dart';
import 'package:obilet_clone/features/search/domain/usecases/search_cities_usecase.dart';

// Datasource Provider
final cityDatasourceProvider = Provider<CityDatasource>((ref) {
  return MockCityDatasource();
});

// Repository Provider
final cityRepositoryProvider = Provider<CityRepository>((ref) {
  final datasource = ref.watch(cityDatasourceProvider);
  return CityRepositoryImpl(datasource: datasource);
});

// UseCase Providers
final getCitiesUseCaseProvider = Provider<GetCitiesUseCase>((ref) {
  final repository = ref.watch(cityRepositoryProvider);
  return GetCitiesUseCase(repository: repository);
});

final searchCitiesUseCaseProvider = Provider<SearchCitiesUseCase>((ref) {
  final repository = ref.watch(cityRepositoryProvider);
  return SearchCitiesUseCase(repository: repository);
});

final getCityByIdUseCaseProvider = Provider<GetCityByIdUseCase>((ref) {
  final repository = ref.watch(cityRepositoryProvider);
  return GetCityByIdUseCase(repository: repository);
});
