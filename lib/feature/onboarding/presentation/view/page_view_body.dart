import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plant_shop/core/utils/app_colors.dart';
import 'package:plant_shop/core/utils/app_images.dart';
import 'package:plant_shop/core/utils/app_route.dart';
import 'package:plant_shop/core/widgets/custom_button.dart';
import 'package:plant_shop/feature/onboarding/presentation/view/widgets/custom_pageview.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewBody extends StatefulWidget {
  const PageViewBody({super.key});

  @override
  State<PageViewBody> createState() => _PageViewBodyState();
}

class _PageViewBodyState extends State<PageViewBody> {
  final controller = PageController();
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPage = controller.page?.round() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 228, 228),
      body: Stack(
        children: [
          PageView(
            controller: controller,
            children: const [
              CustomPageView(
                text: 'Never Kill a Plant Again!',
                subtext:
                    'We will send you reminders for everything related to plant care .',
                image: Assets.imagesOnboarding2,
              ),
              CustomPageView(
                image: Assets.imagesOnboarding3,
                text: 'Tips from the experts',
                subtext:
                    'Get tips from people who really know their stuff and are passionate about plant care',
              ),
            ],
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SmoothPageIndicator(
                  count: 2,
                  controller: controller,
                  effect: const JumpingDotEffect(
                      activeDotColor: AppColors.darkGreen,
                      dotColor: AppColors.lightGreen),
                ),
                SizedBox(
                  height: currentPage == 0 ? 80 : 30,
                ),
                Visibility(
                    visible: currentPage == 1,
                    child: CustomButton(
                      text: 'Create Acount',
                      ontap: () {
                        GoRouter.of(context).go(AppRoute.signInView);
                      },
                    )),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
