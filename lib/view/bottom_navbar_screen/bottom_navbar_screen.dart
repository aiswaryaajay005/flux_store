import 'package:flutter/material.dart';
import 'package:flux_store/utils/constants/image_constants.dart';
import 'package:flux_store/view/cart_screen/cart_screen.dart';
import 'package:flux_store/view/home_screen/home_screen.dart';
import 'package:flux_store/view/profile_screen/profile_screen.dart';
import 'package:flux_store/view/search_screen/search_screen.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  List screenList = [
    HomeScreen(),
    SearchScreen(),
    CartScreen(),
    ProfileScreen(),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screenList[selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.black, blurRadius: 3)],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            currentIndex: selectedIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(ImageConstants.buttonInactive),
                activeIcon: Image.asset(ImageConstants.buttonActive),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(ImageConstants.searchInactive),
                activeIcon: Image.asset(ImageConstants.searchActive),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(ImageConstants.cartInactive),
                activeIcon: Image.asset(ImageConstants.cartActive),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(ImageConstants.profileInactive),
                activeIcon: Image.asset(ImageConstants.profileActive),
                label: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
