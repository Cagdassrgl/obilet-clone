import 'package:flutter/material.dart';
import 'package:obilet_clone/core/constants/assets_constants.dart';
import 'package:obilet_clone/core/extentions/context_extention.dart';
import 'package:obilet_clone/core/extentions/widget_extensions.dart';

import '../components/onboarding_component.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late PageController _pageController;
  int _currentPage = 0;

  final List<Map<String, dynamic>> _onboardingData = [
    {
      'header': 'Yolculuğa Hazır mısın?',
      'body':
          'Kalkış ve varış noktalarını seç, sana en uygun seferleri anında bul.',
      'imagePath': AssetsConstants.onboarding1,
      'isLastPage': false,
    },
    {
      'header': 'Her Firmanın Seferi Tek Uygulamada.',
      'body':
          'Farklı otobüs firmalarının seferlerini karşılaştır, yolculuğun için en uygununu seç.',
      'imagePath': AssetsConstants.onboarding2,
      'isLastPage': false,
    },
    {
      'header': 'Güvenli ve Kolay Ödeme.',
      'body':
          'Biletini güvenilir ödeme yöntemleriyle satın al, yolculuğunu hemen planla.',
      'imagePath': AssetsConstants.onboarding3,
      'isLastPage': true,
    },
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    itemCount: _onboardingData.length,
                    itemBuilder: (context, index) {
                      return OnboardingComponent(
                        header: _onboardingData[index]['header']!,
                        body: _onboardingData[index]['body']!,
                        imagePath: _onboardingData[index]['imagePath']!,
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    _onboardingData.length,
                    (index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: _currentPage == index ? 20 : 8,
                      height: 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color:
                            _currentPage == index
                                ? context.colorScheme.primary
                                : Colors.grey.shade300,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ).withPaddingSymmetric(vertical: 100, horizontal: 32),
            if (_currentPage == _onboardingData.length - 1)
              Positioned(
                top: 0,
                right: 0,
                child: TextButton.icon(
                  onPressed: () {},
                  iconAlignment: IconAlignment.end,
                  label: const Text('Başla').titleSmall(
                    context,
                    overrideStyle: TextStyle(
                      color: context.colorScheme.secondary,
                    ),
                  ),
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: context.colorScheme.secondary,
                  ),
                  style: TextButton.styleFrom(
                    foregroundColor: context.colorScheme.secondary,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
