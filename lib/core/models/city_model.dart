class CityModel {
  const CityModel({required this.id, required this.name, required this.plateCode});

  final int id;
  final String name;
  final String plateCode;

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      CityModel(id: json['id'] as int, name: json['name'] as String, plateCode: json['plateCode'] as String);

  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'plateCode': plateCode};

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CityModel && other.id == id && other.name == name && other.plateCode == plateCode;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ plateCode.hashCode;

  @override
  String toString() => 'CityModel(id: $id, name: $name, plateCode: $plateCode)';
}
