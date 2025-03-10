import 'package:flutter/material.dart';
import 'package:food_fonix/core/app_colors.dart';
import 'package:food_fonix/core/app_images.dart';
import 'package:food_fonix/features/home/presentation/screens/home.dart';
import 'package:food_fonix/features/news/presentation/screens/news.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const NewsPage(),
    const NewsPage(),
    const NewsPage(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: _selectedIndex == 0,
      onPopInvokedWithResult: (didPop, result) {
        if (_selectedIndex != 0) {
          _selectedIndex = 0;
          setState(() {});
        }
      },
      child: Scaffold(
        body: IndexedStack(index: _selectedIndex, children: _widgetOptions),
        bottomNavigationBar: BottomNavigationBar(
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset(
                AppImages.icHome,
                color: AppColors.grey,
                width: 20,
                height: 20,
              ),
              activeIcon: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.appColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(
                  AppImages.icHome,
                  color: AppColors.white,
                  width: 20,
                  height: 20,
                ),
              ),
              label: "Home",
              backgroundColor: AppColors.appColor,
            ),
            BottomNavigationBarItem(
              icon: Image.asset(AppImages.icNews, width: 20, height: 20),
              activeIcon: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.appColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(AppImages.icNews, width: 20, height: 20),
              ),
              label: "News",
              backgroundColor: AppColors.appColor,
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                AppImages.icAnalysis,
                color: AppColors.grey,
                width: 20,
                height: 20,
              ),
              activeIcon: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.appColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(
                  AppImages.icAnalysis,
                  color: AppColors.white,
                  width: 20,
                  height: 20,
                ),
              ),
              label: "Analysis",
              backgroundColor: AppColors.appColor,
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                AppImages.icMessage,
                color: AppColors.grey,
                width: 20,
                height: 20,
              ),
              activeIcon: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.appColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(
                  AppImages.icMessage,
                  color: AppColors.white,
                  width: 20,
                  height: 20,
                ),
              ),
              label: "Message",
              backgroundColor: AppColors.appColor,
            ),
          ],
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.white,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedFontSize: 12,
          unselectedFontSize: 10,
          backgroundColor: AppColors.white,
          unselectedItemColor: AppColors.darkGrey,
          elevation: 20.0,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
        ),
      ),
    );
  }
}
