import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/utils/routes/app_routes.dart';
import 'package:furniture_shopping_app/utils/routes/routes_name.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // fontFamily: "Poppins",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: AppRoutes.getPages,
      initialRoute: RoutesName.loginView,
    );
  }
}

// client id 8793481789da32610883
//client secrets id 6b1ec48d215ddf36bf5d23910158e0deb70198e2
