import 'package:obilet_clone/features/onboarding/domain/entities/onboarding_entity.dart';

import '../../domain/repositories/onboarding_repository.dart';
import '../datasources/onboarding_datasource.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  final OnboardingDataSource dataSource;

  OnboardingRepositoryImpl(this.dataSource);

  @override
  Future<List<OnboardingEntity>> getOnboardingItems() async {
    final models = await dataSource.getOnboardingItems();
    return models.map((model) => model.toEntity()).toList();
  }
}
