class CityEntity {
  final String name;
  final String country;
  final double latitude;
  final double longitude;

  CityEntity({
    required this.name,
    required this.country,
    required this.latitude,
    required this.longitude,
  });

  factory CityEntity.fromJson(Map<String, dynamic> json) {
    return CityEntity(
      name: json['name'],
      country: json['country'],
      latitude: json['latitude'].toDouble(),
      longitude: json['longitude'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'country': country,
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  @override
  String toString() {
    return 'CityEntity{name: $name, country: $country, latitude: $latitude, longitude: $longitude}';
  }
}
