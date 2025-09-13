import 'package:obilet_clone/features/search/domain/entities/city_entity.dart';
import 'package:obilet_clone/features/search/domain/repositories/city_repository.dart';

class SearchCitiesUseCase {
  const SearchCitiesUseCase({required this.repository});

  final CityRepository repository;

  Future<List<CityEntity>> call(String query) async {
    return await repository.searchCities(query);
  }
}
