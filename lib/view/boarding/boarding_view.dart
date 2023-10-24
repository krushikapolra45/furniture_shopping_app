import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/common/app_button.dart';
import 'package:furniture_shopping_app/res/constant/app_assets.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';
import 'package:furniture_shopping_app/res/constant/app_strings.dart';

import '../login/login_view.dart';

class BoardingView extends StatelessWidget {
  const BoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Padding(
      padding: devicePadding,
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AppAssets.splash),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenHeight / 20,
                ),
                const Text(
                  AppStrings.sboarding,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
                SizedBox(
                  height: screenHeight / 30,
                ),
                const Text(
                  AppStrings.boarding,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.sub,
                  ),
                ),
                const Spacer(),
                AppButton(
                  height: screenHeight / 15,
                  width: screenWidth / 1.1,
                  text: AppStrings.start,
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginView(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
