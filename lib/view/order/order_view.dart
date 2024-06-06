import 'package:flutter/material.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(child: Text('delivered')),
              Tab(child: Text('processing')),
              Tab(child: Text('canceled')),
            ],
          ),
          title: const Text('my order'),
          backgroundColor: Colors.transparent,
        ),
        body: const TabBarView(
          children: [
            // Add widgets here
          ],
        ),
      ),
    );
  }
}
