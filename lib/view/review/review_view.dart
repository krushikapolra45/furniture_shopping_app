import 'package:flutter/material.dart';
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Column(
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
            Container(
              width: screenWidth / 1.2,
              color: AppColors.white,
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            AppStrings.bruno,
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: screenWidth / 2.9),
                          Text(
                            "20/03/2020",
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.sub,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        AppAssets.star,
                        width: screenWidth / 4,
                      ),
                      Text(
                        "Nice Furniture with good delivery. The delivery\ntime is very fast. Then products look like \n exactlythe picture in the app.",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.sub,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
