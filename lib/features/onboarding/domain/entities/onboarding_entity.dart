class OnboardingEntity {
  final String header;
  final String body;
  final String imagePath;

  OnboardingEntity({
    required this.header,
    required this.body,
    required this.imagePath,
  });

  @override
  String toString() {
    return 'OnboardingEntity(header: $header, body: $body, imagePath: $imagePath)';
  }
}
