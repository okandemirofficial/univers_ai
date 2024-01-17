import 'package:flutter/material.dart';
import 'package:univers_ai/screens/home_screen.dart';
import 'package:univers_ai/screens/login_screen.dart';
import 'package:univers_ai/service/auth_service.dart';
import 'package:univers_ai/utility/custom_snack_bar.dart';

abstract class LoginScreenViewModel extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  bool isLoading = false;

  var hintTextEmail = 'Lütfen emailinizi giriniz ';
  var labelTextEmail = 'mail';
  var hintTextPassword = 'Lütfen şifrenizi giriniz ';
  var labelTextPassword = 'password';
  var buttonText = 'Giriş';
  var signUpText = "Hesabınız yok mu? ";
  var signUpText2 = "Sign Up";

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
    if (formkey.currentState!.validate() == false) {
      return;
    } else {
      String? result;
      _changeLoading();
      if (emailController.text.isNotEmpty &&
          passwordController.text.isNotEmpty) {
        result = await AuthService().login(
            email: emailController.text, password: passwordController.text);
        if (result == "success") {
          _changeLoading();
          goToScreen(const HomeScreen());
        } else {
          CustomSnackBar.showCustomSnackBar(
              context, "Email veya şifreniz hatalıdır");
          _changeLoading();
        }
      } else {
        CustomSnackBar.showCustomSnackBar(context, "Boş bırakmayınız");
        _changeLoading();
      }
    }
  }

  void goToScreen(Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        return widget;
      }),
    );
  }
}
