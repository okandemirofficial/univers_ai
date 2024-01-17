import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:univers_ai/screens/login_screen.dart';
import 'package:univers_ai/screens/sign_up_screen.dart';
import 'package:univers_ai/service/auth_service.dart';
import 'package:univers_ai/utility/custom_snack_bar.dart';

abstract class SignUpScreenViewModel extends State<SignUpScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  bool isLoading = false;

      var hintTextName = 'Lütfen adınızı giriniz ';
    var labelTextName = 'name';
    var hintTextEmail = 'Lütfen emailinizi giriniz ';
    var labelTextEmail = 'mail';
    var hintTextPhone = 'Lütfen telefon numaranızı giriniz ';
    var labelTextPhone = 'phone';
    var hintTextPassword = 'Lütfen şifrenizi giriniz ';
    var labelTextPassword = 'password';
    var hintTextConfirmPassword = 'Lütfen şifrenizi doğrulayın';
    var labelTextConfirmPassword = 'password';
    var buttonText = 'Kaydet';
    var loginText = "Zaten hesabınız var mı? ";
    var loginText2 = "Login";
  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    phoneController.dispose();
  }

  _changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }

  void goToScreen(Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        return widget;
      }),
    );
  }

  signUp() async {
    if (formkey.currentState!.validate() == false) {
      return;
    } else {
        String? result;
    _changeLoading();
    if (passwordController.text == confirmPasswordController.text &&
        nameController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty) {
      try {
        result = await AuthService().signUp(
            email: emailController.text,
            name: nameController.text,
            password: passwordController.text,
            phone: phoneController.text);
        if (result == "success") {
          _changeLoading();
          goToScreen(const LoginScreen());
        } else {
          CustomSnackBar.showCustomSnackBar(context, "Email veya şifre hatalı");
          _changeLoading();
        }
      } catch (e) {
        if (kDebugMode) {
          print("hata sebebi: $e");
        }
      }
    } else {
      CustomSnackBar.showCustomSnackBar(context, "Boş bırakılamaz");
      _changeLoading();
    }
    }
  
  }
}
