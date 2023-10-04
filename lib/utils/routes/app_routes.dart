import 'package:furniture_shopping_app/utils/routes/routes_name.dart';
import 'package:furniture_shopping_app/view/boarding/boarding_view.dart';
import 'package:furniture_shopping_app/view/home/home_view.dart';
import 'package:furniture_shopping_app/view/login/login_view.dart';
import 'package:furniture_shopping_app/view/sign_up/sign_up_view.dart';
import 'package:get/get.dart';

class AppRoutes {
  static List<GetPage<dynamic>>? getPages = [
    GetPage(name: RoutesName.boardingView, page: () => BoardingView()
        // binding:
        ),
    GetPage(name: RoutesName.loginView, page: () => LoginView()
        // binding:
        ),
    GetPage(name: RoutesName.signUpView, page: () => SignUpView()
        // binding:
        ),
    GetPage(name: RoutesName.homeView, page: () => HomeView()
        // binding:
        ),
  ];
}
