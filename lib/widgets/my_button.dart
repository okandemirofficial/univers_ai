import 'package:flutter/material.dart';
import 'package:univers_ai/utility/color.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.function,
    required this.text,  this.isLoading=false,
  });
  final void Function()? function;
  final String text;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ButtonSize.buttonWidth,
      height: ButtonSize.height,
      margin: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: ElevatedButton(
        onPressed: function,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                8.0), // Buradaki değeri istediğiniz gibi ayarlayabilirsiniz
          ),
          backgroundColor: MyColor.secondaryColor,
        ),
        child:isLoading?const Center(child: CircularProgressIndicator(color: MyColor.primaryColor,),) :Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: MyColor.primaryColor),
        ),
      ),
    );
  }
}

class ButtonSize {
  static const double buttonWidth = 120;
  static const double height = 50;
}
