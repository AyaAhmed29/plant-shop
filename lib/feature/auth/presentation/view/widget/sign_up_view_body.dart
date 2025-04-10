import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:plant_shop/core/utils/app_colors.dart';
import 'package:plant_shop/core/utils/app_images.dart';
import 'package:plant_shop/core/utils/app_styles.dart';
import 'package:plant_shop/feature/auth/presentation/view/widget/sign_up_form_widget.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Text('Create your account', style: AppStyle.style25),
          const SizedBox(height: 10),
          const SignUpFormWidget(),
          const SizedBox(height: 10),
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
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account? ",
                style: AppStyle.style16,
              ),
              TextButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  child: Text(
                    "SIGN IN ",
                    style:
                        AppStyle.style16.copyWith(color: AppColors.darkGreen),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
