import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/common/app_button.dart';
import 'package:furniture_shopping_app/res/constant/app_assets.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';
import 'package:furniture_shopping_app/res/constant/app_strings.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Padding(
      padding: devicePadding,
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        thickness: 1,
                        indent: 23,
                        endIndent: 20,
                        color: AppColors.lGray,
                      ),
                    ),
                    SizedBox(width: screenWidth / 50),
                    Image.asset(
                      AppAssets.chair,
                      height: screenHeight / 10,
                    ),
                    const Expanded(
                      child: Divider(
                        thickness: 1,
                        endIndent: 23,
                        indent: 23,
                        color: AppColors.lGray,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight / 50),
                const Text(
                  textAlign: TextAlign.center,
                  AppStrings.wlc,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: screenHeight / 60),
                Container(
                  width: screenWidth / 1.1,
                  height: screenHeight / 1.5,
                  color: AppColors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Container(
                          height: screenHeight / 10.5,
                          width: screenWidth / 1.3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                width: 1,
                                color: AppColors.lightg,
                              )),
                          child: const Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 8.0, left: 8),
                                  child: Text(
                                    "name",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.sub,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  isDense: false,
                                  border: InputBorder.none,
                                  filled: false,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight / 40),
                      Container(
                        height: screenHeight / 10.5,
                        width: screenWidth / 1.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              width: 1,
                              color: AppColors.lightg,
                            )),
                        child: const Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(top: 8.0, left: 8),
                                child: Text(
                                  AppStrings.email,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.sub,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                isDense: false,
                                border: InputBorder.none,
                                filled: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight / 40),
                      Container(
                        height: screenHeight / 10.5,
                        width: screenWidth / 1.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              width: 1,
                              color: AppColors.lightg,
                            )),
                        child: const Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(top: 8.0, left: 8),
                                child: Text(
                                  AppStrings.password,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.sub,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                isDense: false,
                                border: InputBorder.none,
                                filled: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight / 40),
                      Container(
                        height: screenHeight / 10.5,
                        width: screenWidth / 1.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              width: 1,
                              color: AppColors.lightg,
                            )),
                        child: const Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(top: 8.0, left: 8),
                                child: Text(
                                  "confirm password",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.sub,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                isDense: false,
                                border: InputBorder.none,
                                filled: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight / 40),
                      AppButton(
                        height: screenHeight / 15,
                        width: screenWidth / 1.3,
                        text: AppStrings.sign,
                        onPress: () {},
                      ),
                      SizedBox(height: screenHeight / 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                              text: const TextSpan(
                            text: "Already have an account?  ",
                            style: TextStyle(
                              color: AppColors.sub,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                          RichText(
                            text: const TextSpan(
                              text: "Sign in ",
                              style: TextStyle(
                                color: AppColors.mblack,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
