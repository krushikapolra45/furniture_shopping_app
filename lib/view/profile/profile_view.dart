import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/constant/app_assets.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';
import 'package:furniture_shopping_app/res/constant/app_strings.dart';

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
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Image.asset(
                    AppAssets.girls,
                    width: screenWidth / 5,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.profilen,
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          AppStrings.id,
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.sub,
                            fontWeight: FontWeight.w500,
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
              height: screenHeight / 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.white,
                boxShadow: const [
                  BoxShadow(
                    color: AppColors.lightg,
                    offset: Offset(0, 3),
                    blurRadius: 25,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.orderp,
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          AppStrings.totleo,
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.sub,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.black,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight / 50),
            Container(
              width: screenWidth / 1.1,
              height: screenHeight / 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.white,
                boxShadow: const [
                  BoxShadow(
                    color: AppColors.lightg,
                    offset: Offset(0, 3),
                    blurRadius: 25,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "shipping addresses",
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          AppStrings.totleo,
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.sub,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.black,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight / 50),
            Container(
              width: screenWidth / 1.1,
              height: screenHeight / 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.white,
                boxShadow: const [
                  BoxShadow(
                    color: AppColors.lightg,
                    offset: Offset(0, 3),
                    blurRadius: 25,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "payment method",
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          AppStrings.totleo,
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.sub,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.black,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight / 50),
            Container(
              width: screenWidth / 1.1,
              height: screenHeight / 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.white,
                boxShadow: const [
                  BoxShadow(
                    color: AppColors.lightg,
                    offset: Offset(0, 3),
                    blurRadius: 25,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "my reviews",
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          AppStrings.totleo,
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.sub,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.black,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight / 50),
            Container(
              width: screenWidth / 1.1,
              height: screenHeight / 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.white,
                boxShadow: const [
                  BoxShadow(
                    color: AppColors.lightg,
                    offset: Offset(0, 3),
                    blurRadius: 25,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "setting",
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          AppStrings.totleo,
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.sub,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.black,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
