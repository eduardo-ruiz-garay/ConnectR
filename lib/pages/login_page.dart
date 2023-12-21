import 'package:flutter/material.dart';
import 'package:flutter_application_test/components/my_button.dart';
import 'package:flutter_application_test/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  void login(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
            Icon(
              Icons.person, 
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          
            const SizedBox(height: 25), 
            //app name
            const Text(
              "Connectr", 
              style: TextStyle(fontSize: 20),),
              const SizedBox(height: 50), 
            //email textfield
            MyTextField(
              hintText: "Email", 
              obscureText: false, 
              controller: emailController,),
            //forgot password
            const SizedBox(height: 10), 
            //email textfield
            MyTextField(
              hintText: "Password", 
              obscureText: true, 
              controller: passwordController,),
            //forgot password
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Forgot Password", 
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary),
                ),
              ],
            ),
            //sign in button
            MyButton(text: "Sign-In", onTap: login,),
            //do not have an account Register here
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have a passoword?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary),
                ), 
                GestureDetector(
                  onTap: () {},
                  child: const Text(" Register Here", 
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              ],
            ),
            ],
          ),
        ),
      ),
    );
  }
}