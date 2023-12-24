import 'package:flutter/material.dart';
import 'package:univers_ai/screens/link_screen.dart';
import 'package:univers_ai/utility/logo_image.dart';
import 'package:univers_ai/screens/our_services_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoImage(imageName: "assets/logo/text_logo.png"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.logout))],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: "Hizmetlerimiz"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contactless_outlined),
              label: "İletişim Kanallari")
        ],
      ),
      body:_selectedIndex==0?const OurServices():const LinkScreen(),
    );
  }
}
