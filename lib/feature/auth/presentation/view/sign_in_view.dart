import 'package:flutter/material.dart';
import 'package:plant_shop/feature/auth/presentation/view/widget/sign_in_view_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignInViewBody(),
    );
  }
}
