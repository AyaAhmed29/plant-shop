
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plant_shop/core/utils/app_images.dart';
import 'package:plant_shop/core/utils/app_route.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).go(AppRoute.onboardingView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(Assets.imagesLogo),
      ),
    );
  }
}
