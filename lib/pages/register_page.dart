import 'package:chat_app/components/my_buttons.dart';
import 'package:chat_app/components/my_textfields.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  //email and pw text editing controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  
  //function to go to login page
  final void Function()? onTap;

  //function to register user
  void register(){}
  RegisterPage({super.key, this.onTap});

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
              'Let\'s Get Started!',
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

            const SizedBox(height: 10),

            // Confirm Password TextField
            MyTextfields(
              hintText: 'Confirm Password',
              obscureText: true,
              controller: _confirmPasswordController,
            ),
            
            const SizedBox(height: 20),
            // Register Button
            MyButtons(text: 'Register',onTap: register,),

            // Login Now
            const SizedBox(height: 10),
            // Register Now
            const SizedBox(height: 10), 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already a member?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(width: 6),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    'Login now',
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