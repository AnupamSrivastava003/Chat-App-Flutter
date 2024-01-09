import 'package:chat_app/services/auth/auth_service.dart';
import 'package:chat_app/components/button.dart';
import 'package:chat_app/components/textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _cpasswordController = TextEditingController();
  final void Function()? onTap;

  RegisterPage({super.key, required this.onTap});

  void register(BuildContext context) {
    //auth service
    final authService = AuthService();

    // if password matches then create user
    if (_passwordController.text == _cpasswordController.text) {
      try {
        authService.signUpWithEmailAndPassword(
            _emailController.text, _passwordController.text);
      } catch (error) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text("Error $error"),
                ));
      }
    }
    // if password dont matches then show error
    else {
      showDialog(
            context: context,
            builder: (context) => const AlertDialog(
                  title: Text("Password don't match!"),
                ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            // logo
            Image.asset(
              "assets/logo.png",
              height: 100,
              width: 100,
            ),

            const SizedBox(
              height: 50,
            ),

            // title
            Text(
              "Let's create an account for you!",
              style: TextStyle(
                  fontSize: 16, color: Theme.of(context).colorScheme.primary),
            ),

            const SizedBox(
              height: 25,
            ),

            // email textfield
            MyTextField(
              hintText: "Email",
              controller: _emailController,
            ),

            const SizedBox(
              height: 25,
            ),

            // password textfield
            MyTextField(
              hintText: "Password",
              obscuring: true,
              controller: _passwordController,
            ),

            const SizedBox(
              height: 25,
            ),

            // cpassword textfield
            MyTextField(
              hintText: "Confirm Password",
              obscuring: true,
              controller: _cpasswordController,
            ),

            const SizedBox(
              height: 25,
            ),

            //login button
            MyButton(
              buttonText: "Register",
              onTap: () => register(context),
            ),

            // dont have an account. register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                TextButton(
                    onPressed: onTap,
                    child: Text(
                      "Login Now",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ]),
        ),
      ),
    );
  }
}
