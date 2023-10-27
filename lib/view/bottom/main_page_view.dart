import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/View/Home/home_view.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';
import 'package:furniture_shopping_app/view/favourite/favorite_view.dart';
import 'package:furniture_shopping_app/view/notification/notification_view.dart';
import 'package:furniture_shopping_app/view/profile/profile_view.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({super.key});

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  int currentIndex = 0;

  List<Widget> ScreenList = [
    const HomeView(),
    const FavoriteView(),
    const NotificationView(),
    const ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenList[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedItemColor: const Color(0xFF6F6F6F),
        iconSize: 30,
        selectedItemColor: AppColors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home, color: AppColors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            activeIcon: Icon(Icons.bookmark, color: AppColors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            activeIcon: Icon(Icons.notifications, color: AppColors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_sharp),
            activeIcon: Icon(Icons.person, color: AppColors.black),
            label: '',
          ),
        ],
      ),
    );
  }
}
