import 'package:flutter/material.dart';
import 'package:univers_ai/screens/sign_up_screen.dart';
import 'package:univers_ai/utility/color.dart';
import 'package:univers_ai/utility/logo_image.dart';
import 'package:univers_ai/widgets/my_button.dart';
import 'package:univers_ai/widgets/my_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void goToSignUpScreen() {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) {
          return const SignUpScreen();
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
                  textEditingController: _emailController,
                  hintText: 'Lütfen emailinizi giriniz ',
                  labelText: 'mail'),
              MyTextField(
                  textEditingController: _passwordController,
                  hintText: 'Lütfen şifrenizi giriniz ',
                  labelText: 'password',textInputAction: TextInputAction.done,),
              MyButton(function: () {}, label: const Text('Kaydet')),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Hesabınız yok mu? "),
                  GestureDetector(
                    onTap: goToSignUpScreen,
                    child: Text(
                      "Sign Up",
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
