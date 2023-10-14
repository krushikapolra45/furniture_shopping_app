import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/common/app_button.dart';
import 'package:furniture_shopping_app/res/common/app_hedding.dart';
import 'package:furniture_shopping_app/res/constant/app_assets.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';
import 'package:furniture_shopping_app/res/constant/app_strings.dart';

class ReviewView extends StatelessWidget {
  const ReviewView({super.key});

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
            const AppHedding(
              name: "Rating & review",
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Image.asset(
                    AppAssets.fav,
                    width: screenWidth / 4,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "minimal Stand",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: AppColors.orange,
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "10 review",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight / 30),
            Container(
              width: screenWidth / 1.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.white,
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: [
                              const Text(
                                AppStrings.bruno,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(width: screenWidth / 2.7),
                              const Text(
                                "20/03/2020",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.sub,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          AppAssets.star,
                          width: screenWidth / 4,
                        ),
                        SizedBox(height: screenHeight / 50),
                        const Text(
                          "Nice Furniture with good delivery. The delivery\ntime is very fast. Then products look like \nexactlythe picture in the app.",
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.sub,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    AppAssets.boy,
                    width: screenWidth / 12,
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight / 30),
            Container(
              width: screenWidth / 1.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.white,
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Text(
                                AppStrings.kristin,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(width: screenWidth / 2.5),
                              const Text(
                                "20/03/2020",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.sub,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          AppAssets.star,
                          width: screenWidth / 4,
                        ),
                        SizedBox(height: screenHeight / 50),
                        const Text(
                          "Nice Furniture with good delivery. The delivery\ntime is very fast. Then products look like\nexactly the picture in the app. Besides,\ncolor is also the same and quality is very\ngood despite very cheap price",
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.sub,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    AppAssets.girl,
                    width: screenWidth / 13,
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight / 30),
            Padding(
              padding: const EdgeInsets.all(15),
              child: AppButton(
                height: screenHeight / 15,
                width: screenWidth / 1,
                text: "write a review",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
