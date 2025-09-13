import 'package:obilet_clone/core/constants/assets_constants.dart';
import 'package:obilet_clone/features/onboarding/data/datasources/onboarding_datasource.dart';

import '../models/onboarding_model.dart';

class OnboardingMockDataSource implements OnboardingDataSource {
  @override
  Future<List<OnboardingModel>> getOnboardingItems() async {
    await Future.delayed(const Duration(seconds: 1));

    return [
      OnboardingModel(
        header: 'Yolculuğa Hazır mısın?',
        body:
            'Kalkış ve varış noktalarını seç, sana en uygun seferleri anında bul.',
        imagePath: AssetsConstants.onboarding1,
      ),
      OnboardingModel(
        header: 'Her Firmanın Seferi Tek Uygulamada.',
        body:
            'Farklı otobüs firmalarının seferlerini karşılaştır, yolculuğun için en uygununu seç.',
        imagePath: AssetsConstants.onboarding2,
      ),
      OnboardingModel(
        header: 'Güvenli ve Kolay Ödeme.',
        body:
            'Biletini güvenilir ödeme yöntemleriyle satın al, yolculuğunu hemen planla.',
        imagePath: AssetsConstants.onboarding3,
      ),
    ];
  }
}
