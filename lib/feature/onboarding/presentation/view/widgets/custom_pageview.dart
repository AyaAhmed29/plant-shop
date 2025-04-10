import 'package:flutter/material.dart';
import 'package:plant_shop/core/utils/app_styles.dart';


class CustomPageView extends StatelessWidget {
  const CustomPageView({
    Key? key,
    required this.text,
    required this.subtext,
    required this.image,
  }) : super(key: key);
  final String text;
  final String subtext;
  final String image;

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60)),
                  ),
                  height: MediaQuery.of(context).size.height * .5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 120),
                      Center(
                          child: Text(
                        text,
                        style: AppStyle.style25,
                      )),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Center(
                          child: Text(
                            subtext,
                            textAlign: TextAlign.center,
                            style: AppStyle.style16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Transform.scale(
                alignment: Alignment(
                    0, -MediaQuery.of(context).size.height * .6 / 100),
                scale: 1.1,
                child: Image.asset(image)),
          ],
        )
      ],
    );
  }
}
