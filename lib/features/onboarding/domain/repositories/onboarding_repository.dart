import 'package:obilet_clone/features/onboarding/domain/entities/onboarding_entity.dart';

abstract class OnboardingRepository {
  Future<List<OnboardingEntity>> getOnboardingItems();
}
