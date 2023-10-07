import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({super.key});

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_new,
                    color: AppColors.black,
                    size: 20,
                  ),
                  SizedBox(width: screenWidth / 2.6),
                  Text("my cart",
                      style: TextStyle(
                        color: AppColors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
