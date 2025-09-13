import 'package:obilet_clone/core/models/city_model.dart';

class CityEntity {
  const CityEntity({required this.id, required this.name, required this.plateCode});

  final int id;
  final String name;
  final String plateCode;

  factory CityEntity.fromModel(CityModel model) =>
      CityEntity(id: model.id, name: model.name, plateCode: model.plateCode);

  CityModel toModel() => CityModel(id: id, name: name, plateCode: plateCode);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CityEntity && other.id == id && other.name == name && other.plateCode == plateCode;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ plateCode.hashCode;

  @override
  String toString() => 'CityEntity(id: $id, name: $name, plateCode: $plateCode)';
}
