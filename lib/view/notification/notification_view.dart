import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/constant/app_assets.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> mainList = [
      {
        "Image": AppAssets.woodc,
      },
      {
        "Image": AppAssets.long,
      },
      {
        "Image": AppAssets.white,
      },
      {
        "Image": AppAssets.lamp,
      },
    ];
    return const Placeholder();
  }
}
