import 'package:obilet_clone/features/onboarding/domain/entities/onboarding_entity.dart';

class OnboardingModel extends OnboardingEntity {
  OnboardingModel({
    required super.header,
    required super.body,
    required super.imagePath,
  });

  factory OnboardingModel.fromJson(Map<String, dynamic> json) {
    return OnboardingModel(
      header: json['header'] as String,
      body: json['body'] as String,
      imagePath: json['imagePath'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {'header': header, 'body': body, 'imagePath': imagePath};
  }

  OnboardingEntity toEntity() {
    return OnboardingEntity(header: header, body: body, imagePath: imagePath);
  }
}
