import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:plant_shop/core/utils/app_route.dart';
import 'package:plant_shop/core/widgets/custom_button.dart';
import 'package:plant_shop/feature/auth/presentation/view/widget/custom_text_field.dart';

class SignInFormWidget extends StatefulWidget {
  const SignInFormWidget({
    super.key,
  });

  @override
  State<SignInFormWidget> createState() => _SignInFormWidgetState();
}

class _SignInFormWidgetState extends State<SignInFormWidget> {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: key,
        child:  Column(
          children: [
            const CustomTextField(
              text: 'Email',
              keyboardType: TextInputType.emailAddress,
              hintText: 'ex: jon.smith@email.com',
            ),
            const CustomTextField(
              text: 'Password',
              keyboardType: TextInputType.visiblePassword,
              hintText: '********',
            ),
            const SizedBox(height: 30),
          CustomButton(
            text: 'Sign In',
            ontap: () {
              GoRouter.of(context).go(AppRoute.homeView);
            },
          ),
          ],
        ));
  }
}
