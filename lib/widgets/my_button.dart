import 'package:flutter/material.dart';
import 'package:univers_ai/utility/color.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.function, required this.label});
  final Function()? function;
  final Text label;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ButtonSize.buttonWidth,
      height: ButtonSize.height,
      margin: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: ElevatedButton.icon(
        onPressed: function,
        icon: const Icon(Icons.save),
        label: label,
        style: ButtonStyle(
          iconColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              return MyColor.primaryColor;
            },
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              return MyColor.primaryColor;
            },
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              return MyColor.secondaryColor;
            },
          ),
        ),
      ),
    );
  }
}

class ButtonSize {
  static const double buttonWidth = 120;
  static const double height = 50;
}
