import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:plant_shop/core/utils/app_colors.dart';
import 'package:plant_shop/core/utils/app_images.dart';
import 'package:plant_shop/core/utils/app_route.dart';
import 'package:plant_shop/core/utils/app_styles.dart';
import 'package:plant_shop/feature/auth/presentation/view/widget/sign_in_form_widget.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 100),
          Image.asset(
            Assets.imagesLogo,
            width: 110,
            height: 110,
          ),
          const SizedBox(height: 20),
          Text('Sign in your account', style: AppStyle.style25),
          const SizedBox(height: 20),
          const SignInFormWidget(),
          const SizedBox(height: 15),
          Text(
            'or sign in with',
            style: AppStyle.style16,
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.imagesGoogleIcon,
                height: 30,
                width: 30,
              ),
              const SizedBox(width: 15),
              Image.asset(
                Assets.imagesGithub,
                height: 35,
                width: 35,
              ),
              const SizedBox(width: 15),
              Image.asset(
                Assets.imagesXApp,
                height: 35,
                width: 35,
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account? ",
                style: AppStyle.style16,
              ),
              TextButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRoute.signUpView);
                },
                child: Text(
                  "SIGN UP ",
                  style: AppStyle.style16.copyWith(color: AppColors.darkGreen),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
