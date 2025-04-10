
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plant_shop/core/utils/app_images.dart';
import 'package:plant_shop/core/utils/app_route.dart';
import 'package:plant_shop/core/utils/app_styles.dart';
import 'package:plant_shop/core/widgets/custom_button.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            Text('Welcome', style: AppStyle.style50),
            Padding(
              padding: const EdgeInsets.only(right: 180),
              child: Text(
                'WE are glad that you are here!',
                style: AppStyle.style18,
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                      Assets.imagesOnboarding1,
                    ),
                  ),
                  Positioned(
                    bottom: 120,
                    left: 20,
                    child: CustomButton(
                      text: 'Get started',
                      ontap: () {
                        GoRouter.of(context).go(AppRoute.pageViewBody);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
