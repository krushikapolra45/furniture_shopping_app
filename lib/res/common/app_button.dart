import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';

class AppButton extends StatelessWidget {
  final String? text;
  final double? width;
  final double? height;
  final void Function()? onPress;
  const AppButton({
    super.key,
    this.text,
    this.width,
    this.height,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )),
          fixedSize: MaterialStatePropertyAll(
            Size(width!, height!),
          ),
          backgroundColor: const MaterialStatePropertyAll(
            AppColors.black,
          )),
      onPressed: onPress ?? () {},
      child: Text(
        text ?? "",
        style: TextStyle(
          fontSize: 18,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w400,
          color: AppColors.white,
        ),
      ),
    );
  }
}
