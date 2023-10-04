import 'package:furniture_shopping_app/utils/routes/routes_name.dart';
import 'package:furniture_shopping_app/view/boarding/boarding_view.dart';
import 'package:furniture_shopping_app/view/home/home_view.dart';
import 'package:get/get.dart';

class AppRoutes {
  static List<GetPage<dynamic>>? getPages = [
    GetPage(name: RoutesName.boardingView, page: () => BoardingView()
        // binding:
        ),
    GetPage(name: RoutesName.homeView, page: () => HomeView()
        // binding:
        ),
  ];
}
