import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/common/app_button.dart';
import 'package:furniture_shopping_app/res/constant/app_assets.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';
import 'package:furniture_shopping_app/res/constant/app_strings.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> mainList = [
      {
        "lImage": AppAssets.fav,
      },
      {
        "lImage": AppAssets.stand,
      },
      {
        "lImage": AppAssets.white,
      },
      {
        "lImage": AppAssets.lamp,
      },
    ];
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
                fontSize: 16,
                color: AppColors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: mainList.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(11),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            mainList[index]["lImage"],
                            height: screenHeight / 10,
                            width: screenWidth / 5,
                            // color: AppColors.sub,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30, left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  AppStrings.minimal,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: AppColors.sub,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: screenHeight / 120),
                                const Text(
                                  "\$25.00",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Column(
                            children: [
                              const Icon(
                                Icons.cancel_outlined,
                              ),
                              SizedBox(height: screenHeight / 25),
                              Container(
                                height: screenHeight / 30,
                                width: screenWidth / 15,
                                decoration: BoxDecoration(
                                  color: AppColors.lightg,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: const Icon(
                                  Icons.shopping_bag,
                                  size: 20,
                                  color: AppColors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                        color: AppColors.sub,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            AppButton(
              height: screenHeight / 15,
              width: screenWidth / 1.1,
              text: "submit order",
            ),
            SizedBox(height: screenHeight / 10),
          ],
        ),
      ),
    );
  }
}
