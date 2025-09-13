import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:obilet_clone/features/onboarding/domain/entities/onboarding_entity.dart';
import '../../data/datasources/onboarding_datasource.dart';
import '../../data/datasources/onboarding_mock_datasource.dart';
import '../../data/repositories/onboarding_repository_impl.dart';
import '../../domain/repositories/onboarding_repository.dart';
import '../../domain/usecases/get_onboarding_items_usecase.dart';

//MARK: dataSourceProvider
final onboardingDataSourceProvider = Provider<OnboardingDataSource>((ref) {
  return OnboardingMockDataSource();
});

//MARK: repositoryProvider
final onboardingRepositoryProvider = Provider<OnboardingRepository>((ref) {
  final dataSource = ref.watch(onboardingDataSourceProvider);
  return OnboardingRepositoryImpl(dataSource);
});

//MARK: useCaseProvider
final getOnboardingItemsUseCaseProvider = Provider<GetOnboardingItemsUseCase>((ref) {
  final repository = ref.watch(onboardingRepositoryProvider);
  return GetOnboardingItemsUseCase(repository);
});

//MARK: onboardingItemsProvider
final onboardingItemsProvider = FutureProvider<List<OnboardingEntity>>((ref) async {
  final useCase = ref.watch(getOnboardingItemsUseCaseProvider);
  return await useCase();
});

//MARK: currentPageProvider
final onboardingCurrentPageProvider = StateNotifierProvider<OnboardingPageNotifier, int>((ref) {
  return OnboardingPageNotifier();
});

class OnboardingPageNotifier extends StateNotifier<int> {
  OnboardingPageNotifier() : super(0);

  void setPage(int page) {
    state = page;
  }

  void nextPage(int totalPages) {
    if (state < totalPages - 1) {
      state = state + 1;
    }
  }

  void previousPage() {
    if (state > 0) {
      state = state - 1;
    }
  }
}
