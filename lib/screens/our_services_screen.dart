import 'package:flutter/material.dart';
import 'package:univers_ai/widgets/my_card.dart';

class OurServices extends StatelessWidget {
  const OurServices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: Column(
                children: [
                  MyCard(
                    text: 'Mobil-Uygulama',
                    function: () {},
                  ),
                  MyCard(
                    text: 'Büyük Veri',
                    function: () {},
                  ),
                  MyCard(
                    text: 'Siber Güvenlik',
                    function: () {},
                  ),
                ],
              ),
            ),
            Flexible(
              child: Column(
                children: [
                  MyCard(
                    text: 'Web Sitesi',
                    function: () {},
                  ),
                  MyCard(
                    text: 'Makina Öğrenmesi',
                    function: () {},
                  ),
                  MyCard(
                    text: 'Bulut Bilişim',
                    function: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
