import 'package:flutter/material.dart';
import 'package:univers_ai/screens/login_screen.dart';

abstract class LoginScreenViewModel extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isLoading = false;
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  _changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }

  void login() async {
    String? result;
    _changeLoading();

    if (formKey.currentState!.validate() == false) {
      ///Eger hataliysa burasi calisacak

      return;
    }

    ///eger dogru ise burasi calisacak

    // if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
    //   result = await AuthService().login(
    //       email: emailController.text, password: passwordController.text);
    //   if (result == "success") {
    //     _changeLoading();
    //     goToScreen(const HomeScreen());
    //   } else {
    //     CustomSnackBar.showCustomSnackBar(
    //         context, "Email veya şifreniz hatalıdır");
    //     _changeLoading();
    //   }
    // } else {
    //   CustomSnackBar.showCustomSnackBar(context, "Boş bırakmayınız");
    //   _changeLoading();
    // }
  }

  void goToScreen(Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        return widget;
      }),
    );
  }
}
