import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:obilet_clone/features/search/domain/entities/city_entity.dart';
import 'package:obilet_clone/features/search/presentation/providers/city_providers.dart';

// City State
class CityState {
  const CityState({
    required this.cities,
    required this.isLoading,
    required this.errorMessage,
    required this.selectedDepartureCity,
    required this.selectedArrivalCity,
  });

  final List<CityEntity> cities;
  final bool isLoading;
  final String? errorMessage;
  final CityEntity? selectedDepartureCity;
  final CityEntity? selectedArrivalCity;

  CityState copyWith({
    List<CityEntity>? cities,
    bool? isLoading,
    String? errorMessage,
    CityEntity? selectedDepartureCity,
    CityEntity? selectedArrivalCity,
    bool clearDepartureCity = false,
    bool clearArrivalCity = false,
  }) {
    return CityState(
      cities: cities ?? this.cities,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      selectedDepartureCity: clearDepartureCity ? null : (selectedDepartureCity ?? this.selectedDepartureCity),
      selectedArrivalCity: clearArrivalCity ? null : (selectedArrivalCity ?? this.selectedArrivalCity),
    );
  }

  static const initial = CityState(
    cities: [],
    isLoading: false,
    errorMessage: null,
    selectedDepartureCity: null,
    selectedArrivalCity: null,
  );
}

// City Notifier
class CityNotifier extends StateNotifier<CityState> {
  CityNotifier(this.ref) : super(CityState.initial);

  final Ref ref;

  Future<void> loadCities() async {
    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      final getCitiesUseCase = ref.read(getCitiesUseCaseProvider);
      final cities = await getCitiesUseCase();

      state = state.copyWith(cities: cities, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<void> searchCities(String query) async {
    if (query.isEmpty) {
      await loadCities();
      return;
    }

    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      final searchCitiesUseCase = ref.read(searchCitiesUseCaseProvider);
      final cities = await searchCitiesUseCase(query);

      state = state.copyWith(cities: cities, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  void setDepartureCity(CityEntity? city) {
    state = state.copyWith(selectedDepartureCity: city);
  }

  void setArrivalCity(CityEntity? city) {
    state = state.copyWith(selectedArrivalCity: city);
  }

  void clearDepartureCity() {
    state = state.copyWith(clearDepartureCity: true);
  }

  void clearArrivalCity() {
    state = state.copyWith(clearArrivalCity: true);
  }

  void swapCities() {
    final departure = state.selectedDepartureCity;
    final arrival = state.selectedArrivalCity;

    state = state.copyWith(selectedDepartureCity: arrival, selectedArrivalCity: departure);
  }
}

// City Provider
final cityProvider = StateNotifierProvider<CityNotifier, CityState>((ref) {
  return CityNotifier(ref);
});
