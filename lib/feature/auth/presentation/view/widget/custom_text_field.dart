import 'package:flutter/material.dart';

import 'package:plant_shop/core/utils/app_colors.dart';
import 'package:plant_shop/core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.text,
    required this.keyboardType,
    required this.hintText,
  });
  final String text;
  final TextInputType keyboardType;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ' $text',
            style: AppStyle.style16,
          ),
          TextFormField(
            obscureText:
                (keyboardType == TextInputType.visiblePassword) ? true : false,
            keyboardType: keyboardType,
            decoration: InputDecoration(
                hintText: hintText,
                hintStyle: AppStyle.style16.copyWith(color: Colors.grey),
                filled: true,
                fillColor: AppColors.lightgray,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    width: .9,
                    color: AppColors.darkGreen,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      width: .2,
                      color: AppColors.lightgray,
                    ))),
          ),
        ],
      ),
    );
  }
}
