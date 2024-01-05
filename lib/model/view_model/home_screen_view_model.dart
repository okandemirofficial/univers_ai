import 'package:flutter/material.dart';
import 'package:univers_ai/screens/home_screen.dart';
import 'package:univers_ai/screens/link_screen.dart';
import 'package:univers_ai/screens/login_screen.dart';
import 'package:univers_ai/screens/our_services_screen.dart';
import 'package:univers_ai/service/auth_service.dart';

abstract class HomeScreenViewModel  extends State<HomeScreen>{
    int selectedIndex = 0;
  final List<Widget> screens = [const OurServices(), const LinkScreen()];

  Future<dynamic> logoutDialog(BuildContext context) {
    void goToScreen(Widget widget) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) {
          return widget;
        }),
      );
    }

    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Çıkış İşlemi'),
          content: const Text('Çıkmak istediğinize emin misiniz?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Hayır'),
            ),
            TextButton(
              onPressed: () async {
                await AuthService().signOut();
                goToScreen(const LoginScreen());
              },
              child: const Text('Evet'),
            ),
          ],
        );
      },
    );
  }
}