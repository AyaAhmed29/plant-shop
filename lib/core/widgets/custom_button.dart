
import 'package:flutter/material.dart';
import 'package:plant_shop/core/utils/app_colors.dart';
import 'package:plant_shop/core/utils/app_styles.dart';




class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.ontap,
  });
  final String text;
  final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width * .45,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: AppColors.darkGreen,
          foregroundColor: Colors.white,
        ),
        onPressed: ontap,
        child: Text(text, style: AppStyle.style18),
      ),
    );
  }
}
