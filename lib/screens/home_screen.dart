import 'package:flutter/material.dart';
import 'package:univers_ai/model/view_model/home_screen_view_model.dart';
import 'package:univers_ai/utility/logo_image.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends HomeScreenViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const LogoImage(imageName: "assets/logo/text_logo.png"),
          actions: [
            IconButton(
                onPressed: () {
                  logoutDialog(context);
                },
                icon: const Icon(Icons.logout))
          ],
          automaticallyImplyLeading: false,
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          currentIndex: selectedIndex,
          items:  [
            BottomNavigationBarItem(
                icon:const Icon(Icons.home_filled), label: labelServices),
            BottomNavigationBarItem(
                icon:const Icon(Icons.contactless_outlined),
                label: labelCommunication)
          ],
        ),
        body: screens[selectedIndex]);
  }
}
