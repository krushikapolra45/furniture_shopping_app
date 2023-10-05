import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/constant/app_assets.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';
import 'package:furniture_shopping_app/res/constant/app_strings.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> furnitureList = [
      {
        "populerImage": AppAssets.light,
        "price": "\$ 12.00",
        "history": AppStrings.hBlack,
      },
      {
        "populerImage": AppAssets.bchair,
        "price": "\$ 25.00",
        "history": AppStrings.hMinimal,
      },
      {
        "populerImage": AppAssets.table,
        "price": "\$ 12.00",
        "history": AppStrings.hCoffee,
      },
      {
        "populerImage": AppAssets.stool,
        "price": "\$ 12.00",
        "history": AppStrings.hSimple,
      }
    ];
    List<Map<String, dynamic>> mainList = [
      {
        "lImage": AppAssets.star,
        "text": "Populer",
      },
      {
        "lImage": AppAssets.roundChair,
        "text": "Chair",
      },
      {
        "lImage": AppAssets.roundtable,
        "text": "Table",
      },
      {
        "lImage": AppAssets.roundsofa,
        "text": "Armchair",
      },
      {
        "lImage": AppAssets.bedRound,
        "text": "Bed",
      },
      {
        "lImage": AppAssets.lampRound,
        "text": "Lamb",
      }
    ];
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.search,
          size: 20,
          color: AppColors.sub,
        ),
        centerTitle: true,
        title: const Column(
          children: [
            Text(
              "MAKE HOME",
              style: TextStyle(
                color: AppColors.sub,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            Text(
              "BEAUTIFUL",
              style: TextStyle(
                color: AppColors.sub,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.shopping_cart_outlined,
            size: 20,
            color: AppColors.sub,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: mainList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Container(
                      height: screenHeight / 18,
                      width: screenWidth / 8,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          mainList[index]["lImage"],
                          // color: AppColors.sub,
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.bg,
                      ),
                    ),
                    Text(
                      mainList[index]["text"],
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.sub,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
                // shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: furnitureList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 25,
                  crossAxisSpacing: 20,
                  mainAxisExtent: 280,
                ),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        furnitureList[index]["populerImage"],
                        // height: screenHeight / 20,
                        width: screenWidth / 2.5,
                      ),
                      Text(
                        furnitureList[index]["history"],
                        style: const TextStyle(
                          color: AppColors.sub,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        furnitureList[index]["price"],
                        style: const TextStyle(
                          color: AppColors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
