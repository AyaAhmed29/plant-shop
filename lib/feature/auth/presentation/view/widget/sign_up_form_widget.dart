import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:plant_shop/core/utils/app_colors.dart';
import 'package:plant_shop/core/utils/app_route.dart';
import 'package:plant_shop/core/utils/app_styles.dart';
import 'package:plant_shop/core/widgets/custom_button.dart';
import 'package:plant_shop/feature/auth/presentation/view/widget/custom_text_field.dart';

class SignUpFormWidget extends StatefulWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  State<SignUpFormWidget> createState() => _SignUpFormWidgetState();
}

class _SignUpFormWidgetState extends State<SignUpFormWidget> {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: key,
        child: Column(
          children: [
            const CustomTextField(
              text: 'Name',
              keyboardType: TextInputType.name,
              hintText: 'ex: jon smith',
            ),
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
            const CustomTextField(
              text: 'Confirm Password',
              keyboardType: TextInputType.visiblePassword,
              hintText: '********',
            ),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: AppColors.darkGreen,
                value: isChecked,
                title: Row(
                  children: [
                    Text(
                      "I understood the",
                      style: AppStyle.style16,
                    ),
                    Text(
                      "terms & policy ",
                      style:
                          AppStyle.style16.copyWith(color: AppColors.darkGreen),
                    )
                  ],
                ),
                onChanged: (value) {
                  isChecked = value!;
                  setState(() {});
                }),
            CustomButton(
              text: 'Sign Up',
              ontap: () {
                GoRouter.of(context).go(AppRoute.homeView);
              },
            ),
          ],
        ));
  }
}
