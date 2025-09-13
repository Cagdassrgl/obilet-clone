import 'package:obilet_clone/features/search/domain/entities/city_entity.dart';
import 'package:obilet_clone/features/search/domain/repositories/city_repository.dart';

class GetCitiesUseCase {
  const GetCitiesUseCase({required this.repository});

  final CityRepository repository;

  Future<List<CityEntity>> call() async {
    return await repository.getCities();
  }
}
