import 'package:obilet_clone/core/models/city_model.dart';
import 'package:obilet_clone/features/search/data/datasources/city_datasource.dart';

class MockCityDatasource implements CityDatasource {
  static const List<CityModel> _turkishCities = [
    CityModel(id: 1, name: 'Adana', plateCode: '01'),
    CityModel(id: 2, name: 'Adıyaman', plateCode: '02'),
    CityModel(id: 3, name: 'Afyonkarahisar', plateCode: '03'),
    CityModel(id: 4, name: 'Ağrı', plateCode: '04'),
    CityModel(id: 5, name: 'Amasya', plateCode: '05'),
    CityModel(id: 6, name: 'Ankara', plateCode: '06'),
    CityModel(id: 7, name: 'Antalya', plateCode: '07'),
    CityModel(id: 8, name: 'Artvin', plateCode: '08'),
    CityModel(id: 9, name: 'Aydın', plateCode: '09'),
    CityModel(id: 10, name: 'Balıkesir', plateCode: '10'),
    CityModel(id: 11, name: 'Bilecik', plateCode: '11'),
    CityModel(id: 12, name: 'Bingöl', plateCode: '12'),
    CityModel(id: 13, name: 'Bitlis', plateCode: '13'),
    CityModel(id: 14, name: 'Bolu', plateCode: '14'),
    CityModel(id: 15, name: 'Burdur', plateCode: '15'),
    CityModel(id: 16, name: 'Bursa', plateCode: '16'),
    CityModel(id: 17, name: 'Çanakkale', plateCode: '17'),
    CityModel(id: 18, name: 'Çankırı', plateCode: '18'),
    CityModel(id: 19, name: 'Çorum', plateCode: '19'),
    CityModel(id: 20, name: 'Denizli', plateCode: '20'),
    CityModel(id: 21, name: 'Diyarbakır', plateCode: '21'),
    CityModel(id: 22, name: 'Edirne', plateCode: '22'),
    CityModel(id: 23, name: 'Elazığ', plateCode: '23'),
    CityModel(id: 24, name: 'Erzincan', plateCode: '24'),
    CityModel(id: 25, name: 'Erzurum', plateCode: '25'),
    CityModel(id: 26, name: 'Eskişehir', plateCode: '26'),
    CityModel(id: 27, name: 'Gaziantep', plateCode: '27'),
    CityModel(id: 28, name: 'Giresun', plateCode: '28'),
    CityModel(id: 29, name: 'Gümüşhane', plateCode: '29'),
    CityModel(id: 30, name: 'Hakkâri', plateCode: '30'),
    CityModel(id: 31, name: 'Hatay', plateCode: '31'),
    CityModel(id: 32, name: 'Isparta', plateCode: '32'),
    CityModel(id: 33, name: 'Mersin', plateCode: '33'),
    CityModel(id: 34, name: 'İstanbul', plateCode: '34'),
    CityModel(id: 35, name: 'İzmir', plateCode: '35'),
    CityModel(id: 36, name: 'Kars', plateCode: '36'),
    CityModel(id: 37, name: 'Kastamonu', plateCode: '37'),
    CityModel(id: 38, name: 'Kayseri', plateCode: '38'),
    CityModel(id: 39, name: 'Kırklareli', plateCode: '39'),
    CityModel(id: 40, name: 'Kırşehir', plateCode: '40'),
    CityModel(id: 41, name: 'Kocaeli', plateCode: '41'),
    CityModel(id: 42, name: 'Konya', plateCode: '42'),
    CityModel(id: 43, name: 'Kütahya', plateCode: '43'),
    CityModel(id: 44, name: 'Malatya', plateCode: '44'),
    CityModel(id: 45, name: 'Manisa', plateCode: '45'),
    CityModel(id: 46, name: 'Kahramanmaraş', plateCode: '46'),
    CityModel(id: 47, name: 'Mardin', plateCode: '47'),
    CityModel(id: 48, name: 'Muğla', plateCode: '48'),
    CityModel(id: 49, name: 'Muş', plateCode: '49'),
    CityModel(id: 50, name: 'Nevşehir', plateCode: '50'),
    CityModel(id: 51, name: 'Niğde', plateCode: '51'),
    CityModel(id: 52, name: 'Ordu', plateCode: '52'),
    CityModel(id: 53, name: 'Rize', plateCode: '53'),
    CityModel(id: 54, name: 'Sakarya', plateCode: '54'),
    CityModel(id: 55, name: 'Samsun', plateCode: '55'),
    CityModel(id: 56, name: 'Siirt', plateCode: '56'),
    CityModel(id: 57, name: 'Sinop', plateCode: '57'),
    CityModel(id: 58, name: 'Sivas', plateCode: '58'),
    CityModel(id: 59, name: 'Tekirdağ', plateCode: '59'),
    CityModel(id: 60, name: 'Tokat', plateCode: '60'),
    CityModel(id: 61, name: 'Trabzon', plateCode: '61'),
    CityModel(id: 62, name: 'Tunceli', plateCode: '62'),
    CityModel(id: 63, name: 'Şanlıurfa', plateCode: '63'),
    CityModel(id: 64, name: 'Uşak', plateCode: '64'),
    CityModel(id: 65, name: 'Van', plateCode: '65'),
    CityModel(id: 66, name: 'Yozgat', plateCode: '66'),
    CityModel(id: 67, name: 'Zonguldak', plateCode: '67'),
    CityModel(id: 68, name: 'Aksaray', plateCode: '68'),
    CityModel(id: 69, name: 'Bayburt', plateCode: '69'),
    CityModel(id: 70, name: 'Karaman', plateCode: '70'),
    CityModel(id: 71, name: 'Kırıkkale', plateCode: '71'),
    CityModel(id: 72, name: 'Batman', plateCode: '72'),
    CityModel(id: 73, name: 'Şırnak', plateCode: '73'),
    CityModel(id: 74, name: 'Bartın', plateCode: '74'),
    CityModel(id: 75, name: 'Ardahan', plateCode: '75'),
    CityModel(id: 76, name: 'Iğdır', plateCode: '76'),
    CityModel(id: 77, name: 'Yalova', plateCode: '77'),
    CityModel(id: 78, name: 'Karabük', plateCode: '78'),
    CityModel(id: 79, name: 'Kilis', plateCode: '79'),
    CityModel(id: 80, name: 'Osmaniye', plateCode: '80'),
    CityModel(id: 81, name: 'Düzce', plateCode: '81'),
  ];

  @override
  Future<List<CityModel>> getCities() async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 500));
    return _turkishCities;
  }

  @override
  Future<CityModel?> getCityById(int id) async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 300));
    try {
      return _turkishCities.firstWhere((city) => city.id == id);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<List<CityModel>> searchCities(String query) async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 400));

    if (query.isEmpty) return _turkishCities;

    final lowerQuery = query.toLowerCase();
    return _turkishCities
        .where((city) => city.name.toLowerCase().contains(lowerQuery) || city.plateCode.contains(query))
        .toList();
  }
}
