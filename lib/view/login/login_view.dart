import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/constant/app_assets.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../res/common/app_button.dart';
import '../../res/constant/app_strings.dart';
import '../../utils/Routes/routes_name.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                SizedBox(height: screenHeight / 80),
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        thickness: 0.8,
                        indent: 23,
                        endIndent: 5,
                        color: AppColors.lGray,
                      ),
                    ),
                    SizedBox(width: screenWidth / 60),
                    Image.asset(
                      AppAssets.chair,
                      height: screenHeight / 11,
                    ),
                    const Expanded(
                      child: Divider(
                        thickness: 0.8,
                        endIndent: 23,
                        indent: 5,
                        color: AppColors.lGray,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight / 50),
                const Text(
                  textAlign: TextAlign.center,
                  AppStrings.welcome,
                  style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                  ),
                ),
                SizedBox(height: screenHeight / 50),
                Container(
                  height: screenHeight / 1.95,
                  width: screenWidth / 1.1,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(3),
                    boxShadow: const [
                      BoxShadow(
                        color: AppColors.lightg,
                        offset: Offset(0, 3),
                        blurRadius: 25,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
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
                                    "email",
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
                      SizedBox(height: screenHeight / 50),
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
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          AppStrings.fPassword,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            color: AppColors.mblack,
                          ),
                        ),
                      ),
                      AppButton(
                        height: screenHeight / 15,
                        width: screenWidth / 1.3,
                        text: AppStrings.log,
                        onPress: () {
                          Get.offNamed(RoutesName.homeView);
                        },
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(RoutesName.signUpView);
                        },
                        child: const Text(
                          AppStrings.sign,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            color: AppColors.mblack,
                          ),
                        ),
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
