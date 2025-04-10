import 'package:go_router/go_router.dart';
import 'package:plant_shop/feature/auth/presentation/view/sign_in_view.dart';
import 'package:plant_shop/feature/auth/presentation/view/sign_up_view.dart';
import 'package:plant_shop/feature/home/presentation/view/home_view.dart';
import 'package:plant_shop/feature/onboarding/presentation/view/onboarding_view.dart';
import 'package:plant_shop/feature/onboarding/presentation/view/page_view_body.dart';
import 'package:plant_shop/feature/splash/presentation/view/splash_view.dart';

abstract class AppRoute {
  static const String onboardingView = '/OnboardingView';
  static const String pageViewBody = '/PageViewBody';
  static const String signInView = '/SignInView';
  static const String signUpView = '/SignUpView';
  static const String homeView = '/HomeView';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: onboardingView,
      builder: (context, state) => const OnboardingView(),
    ),
    GoRoute(
      path: pageViewBody,
      builder: (context, state) => const PageViewBody(),
    ),
    GoRoute(
      path: signInView,
      builder: (context, state) => const SignInView(),
    ),
    GoRoute(
      path: signUpView,
      builder: (context, state) => const SignUpView(),
    ),
    GoRoute(
      path: homeView,
      builder: (context, state) => const HomeView(),
    ),
  ]);
}
