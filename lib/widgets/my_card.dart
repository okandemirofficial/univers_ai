import 'package:flutter/material.dart';
import 'package:univers_ai/utility/color.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key, required this.text, required this.function,
  });
  final String text;
  final void Function()? function;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          color: MyColor.secondaryColor,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey, // Gölge rengi
              offset: Offset(0, 2), // Gölge konumu (x, y)
              blurRadius: 5.0, // Gölge bulanıklığı
              spreadRadius: 1.0, // Gölge yayılma miktarı
            ),
          ],
          borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: function,
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style:
                Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
