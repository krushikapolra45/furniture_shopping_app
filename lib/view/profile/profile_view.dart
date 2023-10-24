import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/constant/app_assets.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Padding(
      padding: devicePadding,
      child: Scaffold(
        body: Column(
          children: [
            const Text(
              "profile",
              style: TextStyle(
                fontSize: 16,
                color: AppColors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              children: [
                Image.asset(
                  AppAssets.girl,
                  height: screenHeight / 20,
                  width: screenWidth / 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
