import '../models/onboarding_model.dart';

abstract class OnboardingDataSource {
  Future<List<OnboardingModel>> getOnboardingItems();
}
