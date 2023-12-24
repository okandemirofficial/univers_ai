import 'package:flutter/material.dart';
import 'package:univers_ai/utility/color.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {super.key,
      required this.textEditingController,
      required this.hintText,
      required this.labelText,this.textInputAction=TextInputAction.next,  });
  final TextEditingController textEditingController;
  final String hintText;
  final String labelText;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: MyPadding.textMargin,
      padding: MyPadding.textPadding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(),
          color: MyColor.primaryColor),
      child: TextField(
        controller: textEditingController,
        textInputAction: textInputAction,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: MyColor.styleColor),
          labelText: labelText,
          labelStyle: const TextStyle(color: MyColor.styleColor),
          border: InputBorder.none,
        ),
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: Colors.black),
        autofillHints: const [AutofillHints.email],
      ),
    );
  }
}

class MyPadding {
  static const textMargin = EdgeInsets.all(20);
  static const textPadding = EdgeInsets.only(left: 10);
}
