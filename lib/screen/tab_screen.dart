import 'package:book_store/screen/carttab.screen/cart.dart';
import 'package:book_store/screen/categorytab.screen/categories.dart';
import 'package:book_store/screen/hometab.screen/hometab.dart';
import 'package:book_store/screen/profiletab.screen/profile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:remixicon/remixicon.dart';

class TabScreen extends StatelessWidget {
  TabScreen({super.key});
  final List<Widget> _pages = [
    const HomeScreen(),
    const CategoriesScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<TabViewProvider>(context);

    return Scaffold(
      body: _pages[navigationProvider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: navigationProvider.currentIndex,
        onTap: (index) {
          navigationProvider.updateCurrentIndex(index);
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Remix.home_2_fill,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Remix.book_open_fill,
              ),
              label: 'Category'),
          BottomNavigationBarItem(
              icon: Icon(
                Remix.shopping_cart_2_fill,
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(
                Remix.user_fill,
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}

class TabViewProvider with ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void updateCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
