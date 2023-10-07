import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/common/app_button.dart';
import 'package:furniture_shopping_app/res/common/app_favorites.dart';
import 'package:furniture_shopping_app/res/constant/app_assets.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

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
              "favorites",
              style: TextStyle(
                color: AppColors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: screenHeight / 50,
            ),
            AppFavorites(
              image: AppAssets.fav,
            ),
            const Divider(
              thickness: 1,
              color: AppColors.lightg,
              indent: 15,
              endIndent: 15,
            ),
            AppFavorites(
              image: AppAssets.chairF,
            ),
            const Divider(
              thickness: 1,
              color: AppColors.lightg,
              indent: 15,
              endIndent: 15,
            ),
            AppFavorites(
              image: AppAssets.white,
            ),
            const Divider(
              thickness: 1,
              color: AppColors.lightg,
              indent: 15,
              endIndent: 15,
            ),
            AppFavorites(
              image: AppAssets.lamp,
            ),
            SizedBox(height: screenHeight / 30),
            AppButton(
              height: screenHeight / 15,
              width: screenWidth / 1.1,
              text: "Add to my cart",
            ),
          ],
        ),
      ),
    );
  }
}
