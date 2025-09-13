import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:obilet_clone/core/extentions/context_extention.dart';
import 'package:obilet_clone/core/extentions/widget_extensions.dart';
import 'package:obilet_clone/features/search/presentation/pages/search_page.dart';

import '../components/onboarding_component.dart';
import '../providers/onboarding_providers.dart';

class OnboardingPage extends ConsumerWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPage = ref.watch(onboardingCurrentPageProvider);
    final onboardingItemsAsync = ref.watch(onboardingItemsProvider);

    return Scaffold(
      body: SafeArea(
        child: onboardingItemsAsync.when(
          data: (onboardingItems) {
            final pageController = PageController(initialPage: currentPage);

            return Stack(
              children: [
                Column(
                  children: [
                    //MARK: PageView
                    Expanded(
                      child: PageView.builder(
                        controller: pageController,
                        onPageChanged: (int page) {
                          ref.read(onboardingCurrentPageProvider.notifier).setPage(page);
                        },
                        itemCount: onboardingItems.length,
                        itemBuilder: (context, index) {
                          final item = onboardingItems[index];
                          return OnboardingComponent(header: item.header, body: item.body, imagePath: item.imagePath);
                        },
                      ),
                    ),
                    //MARK: PageIndicator
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        onboardingItems.length,
                        (index) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: currentPage == index ? 20 : 8,
                          height: 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: currentPage == index ? context.colorScheme.primary : Colors.grey.shade300,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ).withPaddingSymmetric(vertical: 64, horizontal: 32),
                if (currentPage == onboardingItems.length - 1)
                  //MARK: StartButton
                  Positioned(
                    top: 0,
                    right: 0,
                    child: TextButton.icon(
                      onPressed: () {
                        context.pushReplacement(const SearchPage());
                      },
                      iconAlignment: IconAlignment.end,
                      label: const Text('Başla').titleSmall(
                        context,
                        overrideStyle: TextStyle(color: context.colorScheme.secondary, fontWeight: FontWeight.bold),
                      ),
                      icon: Icon(Icons.arrow_forward_ios, size: 16, color: context.colorScheme.secondary),
                      style: TextButton.styleFrom(foregroundColor: context.colorScheme.secondary),
                    ),
                  ),
              ],
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(child: Text('Error: $error')),
        ),
      ),
    );
  }
}
