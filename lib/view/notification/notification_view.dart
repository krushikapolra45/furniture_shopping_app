import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/constant/app_assets.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';
import 'package:furniture_shopping_app/res/constant/app_strings.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> mainList = [
      {
        "Image": AppAssets.woodc,
        "name": AppStrings.notnew,
        "order": "Your order #123456789 has been \nshipped successfully",
      },
      {
        "Image": AppAssets.long,
        "name": AppStrings.notnew,
        "order": "Your order #123456789 has been\nshipped",
      },
      {
        "Image": AppAssets.cusion,
        "name": AppStrings.hot,
        "order": "Your order #123456789 has been\nconfirmed",
      },
      {
        "Image": AppAssets.sofa,
        "name": AppStrings.hot,
        "order": "Discover hot sale furnitures this\nweek.",
      },
      {
        "Image": AppAssets.roomc,
        "name": "",
        "order": "Your order #123456789 has been\ncanceled",
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
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              AppStrings.notification,
              style: TextStyle(
                fontSize: 16,
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
                            mainList[index]["Image"],
                            height: screenHeight / 10,
                            width: screenWidth / 5,
                            // color: AppColors.sub,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  mainList[index]["order"],
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit. ",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: AppColors.sub,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Text(
                            mainList[index]["name"],
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.green,
                              fontWeight: FontWeight.w400,
                            ),
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
          ],
        ),
      ),
    );
  }
}
