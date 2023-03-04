import 'package:bottom_navigator_poc/pages.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigator extends StatelessWidget {
  final Widget? page;
  const CustomBottomNavigator({super.key, this.page});

  static int currentIndex = 0;

  int get getCurrentIndex => searchPage() ?? currentIndex;

  int? searchPage() {
    if (page == null) {
      return null;
    } else if (page is FirstPage) {
      return 0;
    } else if (page is SecondPage) {
      return 1;
    } else if (page is ThirdPage) {
      return 2;
    } else {
      return null;
    }
  }

  String? searchRoutePage(int index) {
    if (index == 0) {
      return '/first';
    } else if (index == 1) {
      return '/second';
    } else if (index == 2) {
      return '/third';
    } else if (index == 3) {
      return '/fourth';
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: getCurrentIndex,
      onTap: (int index) {
        final String? route = searchRoutePage(index);
        if (index != currentIndex && route != null) {
          currentIndex = index;

          Navigator.of(context).pushReplacementNamed(
            route,
          );
        }
      },
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          activeIcon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Business',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'School',
        ),
      ],
    );
  }
}
