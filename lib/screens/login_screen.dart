import 'package:flutter/material.dart';
import 'package:univers_ai/model/view_model/login_screen_view_model.dart';
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

class _LoginScreenState extends LoginScreenViewModel {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const LogoImage(
                  imageName:'assets/logo/logo.jpeg',
                ),
                MyTextField(
                  textEditingController: emailController,
                  hintText: hintTextEmail,
                  labelText: labelTextEmail,
                  textInputType: TextInputType.emailAddress,
                ),
                MyTextField(
                  textEditingController: passwordController,
                  hintText: hintTextPassword,
                  labelText: labelTextPassword,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.text,
                  obsecureText: true,
                  autofillHints: const [AutofillHints.password],
                ),
                MyButton(
                  function: login,
                  text: buttonText,
                  isLoading: isLoading,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(signUpText),
                    GestureDetector(
                      onTap: () => goToScreen(const SignUpScreen()),
                      child: Text(
                        signUpText2,
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
      ),
    );
  }
}
