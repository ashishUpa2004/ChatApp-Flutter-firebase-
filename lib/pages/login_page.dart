import 'package:chat_app/components/my_buttons.dart';
import 'package:chat_app/components/my_textfields.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  //email and pw text editing controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  //function to go to register page
  final void Function()? onTap;

  //function for login button
  void login(){}

  LoginPage({super.key, this.onTap});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Icon(
              Icons.message,
              size: 100,
              color: Theme.of(context).colorScheme.primary,
            ),

            // Welcome Text
            Text(
              'Welcome Back!',
              style: TextStyle(
                fontSize: 24,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),

            const SizedBox(height: 20),

            // Email TextField
            MyTextfields(
              hintText: 'Email',
              obscureText: false,
              controller: _emailController,
            ),

            const SizedBox(height: 10),

            // Password TextField
            MyTextfields(
              hintText: 'Password',
              obscureText: true,
              controller: _passwordController,
            ),
            
            // Login Button
            const SizedBox(height: 20),
            MyButtons(text: 'Login',onTap: login,),

            // Register Now
            const SizedBox(height: 10), 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(width: 6),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    'Register now',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),),
    );
  }
}