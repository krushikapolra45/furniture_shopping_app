import 'package:furniture_shopping_app/utils/routes/routes_name.dart';
import 'package:furniture_shopping_app/view/boarding/boarding_view.dart';
import 'package:furniture_shopping_app/view/bottom/main_page_view.dart';
import 'package:furniture_shopping_app/view/check_out/check_out_view.dart';
import 'package:furniture_shopping_app/view/congrats/congrats_view.dart';
import 'package:furniture_shopping_app/view/favourite/favorite_view.dart';
import 'package:furniture_shopping_app/view/home/home_view.dart';
import 'package:furniture_shopping_app/view/login/login_view.dart';
import 'package:furniture_shopping_app/view/product/product_view.dart';
import 'package:furniture_shopping_app/view/profile/profile_view.dart';
import 'package:furniture_shopping_app/view/review/review_view.dart';
import 'package:furniture_shopping_app/view/sign_up/sign_up_view.dart';
import 'package:get/get.dart';

class AppRoutes {
  static List<GetPage<dynamic>>? getPages = [
    GetPage(name: RoutesName.boardingView, page: () => const BoardingView()
        // binding:
        ),
    GetPage(name: RoutesName.loginView, page: () => const LoginView()
        // binding:
        ),
    GetPage(name: RoutesName.signUpView, page: () => const SignUpView()
        // binding:
        ),
    GetPage(name: RoutesName.homeView, page: () => const HomeView()
        // binding:

        ),
    GetPage(name: RoutesName.productView, page: () => const ProductView()
        // binding:
        ),
    GetPage(name: RoutesName.favoriteView, page: () => const FavoriteView()
        // binding:
        ),
    GetPage(name: RoutesName.checkOutView, page: () => const CheckOutView()
        // binding:
        ),
    GetPage(name: RoutesName.congratsView, page: () => const CongratsView()
        // binding:
        ),
    GetPage(
      name: RoutesName.reviewView, page: () => const ReviewView(),
      // binding:
    ),
    GetPage(
      name: RoutesName.profileView, page: () => const ProfileView(),
      // binding:
    ),
    GetPage(
      name: RoutesName.mainPageView, page: () => MainPageView(),
      // binding:
    ),
  ];
}
