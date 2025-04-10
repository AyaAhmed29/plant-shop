import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plant_shop/core/utils/app_images.dart';
import 'package:plant_shop/feature/auth/presentation/view/widget/sign_UP_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
        actions: [Image.asset(Assets.imagesLogo)],
      ),
      body: const SignUpViewBody(),
    );
  }
}
