import 'package:flutter/material.dart';
import 'package:univers_ai/model/view_model/signup_screen_view_model.dart';
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

class _SignUpScreenState extends SignUpScreenViewModel {

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
                  imageName: 'assets/logo/logo.jpeg',
                ),
                MyTextField(
                  textEditingController: nameController,
                  hintText: hintTextName,
                  labelText: labelTextName,
                  textInputType: TextInputType.text,
                  autofillHints: const [AutofillHints.name],
                ),
                MyTextField(
                  textEditingController: emailController,
                  hintText: hintTextEmail,
                  labelText: labelTextEmail,
                  textInputType: TextInputType.emailAddress,
                ),
                MyTextField(
                  textEditingController: phoneController,
                  hintText: hintTextPhone,
                  labelText: labelTextPhone,
                  textInputType: TextInputType.phone,
                ),
                MyTextField(
                  textEditingController: passwordController,
                  hintText: hintTextPassword,
                  labelText: labelTextPassword,
                  textInputType: TextInputType.text,
                  obsecureText: true,
                  autofillHints: const [AutofillHints.newPassword],
                ),
                MyTextField(
                  textEditingController: confirmPasswordController,
                  hintText: hintTextConfirmPassword,
                  labelText: labelTextConfirmPassword,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.text,
                  obsecureText: true,
                  autofillHints: const [AutofillHints.password],
                ),
                MyButton(
                  function: signUp,
                  text: buttonText,
                  isLoading: isLoading,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text(loginText),
                    GestureDetector(
                      onTap: () => goToScreen(const LoginScreen()),
                      child: Text(
                        loginText2,
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
