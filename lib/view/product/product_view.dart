import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/common/app_button.dart';
import 'package:furniture_shopping_app/res/constant/app_assets.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';
import 'package:furniture_shopping_app/res/constant/app_strings.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              children: [
                Image.asset(
                  AppAssets.product,
                  height: screenHeight / 1.9,
                  width: screenWidth / 1.2,
                ),
                Positioned(
                  top: 20,
                  child: Container(
                    height: screenHeight / 22,
                    width: screenWidth / 10,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.lGray,
                          offset: Offset(1.4, 1.4),
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Align(
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: screenWidth / 90, left: screenWidth / 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(screenWidth / 40),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        textAlign: TextAlign.start,
                        AppStrings.minimal,
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(width: screenWidth / 40),
                      const Text(
                        textAlign: TextAlign.start,
                        "\$ 50",
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: AppColors.orange,
                        size: 22,
                      ),
                      const Text(
                        textAlign: TextAlign.start,
                        ("4.5"),
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: screenWidth / 40),
                      const Text(
                        textAlign: TextAlign.start,
                        ("(50 reviews)"),
                        style: TextStyle(
                          color: AppColors.sub,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight / 100),
                  const Text(
                    textAlign: TextAlign.start,
                    ("Minimal Stand is made of by natural wood. The \n design that is very simple and minimal. This is\n truly one of the best furnitures in any family for\n now. With 3 different colors, you can easily\n select the best match for your home. "),
                    style: TextStyle(
                      color: AppColors.sub,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: screenHeight / 100),
                  Row(
                    children: [
                      Container(
                        height: screenHeight / 16,
                        width: screenWidth / 7,
                        decoration: BoxDecoration(
                          color: AppColors.lightg,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(screenWidth / 40),
                          child: Image.asset(
                            AppAssets.marker,
                            color: AppColors.lGray,
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth / 20),
                      AppButton(
                        height: screenHeight / 15,
                        width: screenWidth / 1.3,
                        text: AppStrings.cart,
                        onPress: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
