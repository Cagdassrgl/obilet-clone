import 'package:obilet_clone/features/search/domain/entities/city_entity.dart';
import 'package:obilet_clone/features/search/domain/repositories/city_repository.dart';

class GetCityByIdUseCase {
  const GetCityByIdUseCase({required this.repository});

  final CityRepository repository;

  Future<CityEntity?> call(int id) async {
    return await repository.getCityById(id);
  }
}
