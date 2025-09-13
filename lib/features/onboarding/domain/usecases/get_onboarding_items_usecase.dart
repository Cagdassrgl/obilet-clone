import 'package:obilet_clone/features/onboarding/domain/entities/onboarding_entity.dart';

import '../repositories/onboarding_repository.dart';

class GetOnboardingItemsUseCase {
  final OnboardingRepository repository;

  GetOnboardingItemsUseCase(this.repository);

  Future<List<OnboardingEntity>> call() async {
    return await repository.getOnboardingItems();
  }
}
