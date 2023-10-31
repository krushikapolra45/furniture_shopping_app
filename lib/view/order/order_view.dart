import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/common/app_hedding.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppHedding(
            name: "my order",
          ),
        ],
      ),
    );
  }
}
