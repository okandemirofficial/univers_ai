import 'package:flutter/material.dart';
import 'package:univers_ai/screens/login_screen.dart';
import 'package:univers_ai/utility/color.dart';
import 'package:univers_ai/utility/logo_image.dart';
import 'package:univers_ai/widgets/my_button.dart';
import 'package:univers_ai/widgets/my_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    void goToLoginScreen() {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) {
          return const LoginScreen();
        }),
      );
    }

    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LogoImage(
                imageName: 'assets/logo/logo.jpeg',
              ),
              MyTextField(
                  textEditingController: _nameController,
                  hintText: 'Lütfen adınızı giriniz ',
                  labelText: 'name'),
              MyTextField(
                  textEditingController: _emailController,
                  hintText: 'Lütfen emailinizi giriniz ',
                  labelText: 'mail'),
              MyTextField(
                  textEditingController: _passwordController,
                  hintText: 'Lütfen şifrenizi giriniz ',
                  labelText: 'password'),
              MyTextField(
                  textEditingController: _confirmPasswordController,
                  hintText: 'Lütfen şifrenizi doğrulayın',
                  labelText: 'password',
                  textInputAction: TextInputAction.done,
                  ),
              MyButton(function: () {}, label: const Text('Kaydet')),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Zaten hesabınız var mı? "),
                  GestureDetector(
                    onTap:goToLoginScreen,
                    child: Text(
                      "Login",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  )
                ],
              ),
              const LogoImage(
                imageName: 'assets/logo/text_logo.jpeg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
