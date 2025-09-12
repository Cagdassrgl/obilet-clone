import 'package:flutter/material.dart';
import 'package:obilet_clone/core/extentions/widget_extensions.dart';

class OnboardingComponent extends StatelessWidget {
  const OnboardingComponent({
    super.key,
    required this.header,
    required this.body,
    required this.imagePath,
  });

  final String header;
  final String body;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 32,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(header, textAlign: TextAlign.center).headlineLarge(context),
        Text(
          body,
          textAlign: TextAlign.center,
        ).bodyLarge(context).withPaddingSymmetric(horizontal: 16),
        Flexible(child: Image.asset(imagePath)),
      ],
    );
  }
}
