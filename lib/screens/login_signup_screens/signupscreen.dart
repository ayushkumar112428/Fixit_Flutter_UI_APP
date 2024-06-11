import 'package:fixit/components/button_style.dart';
import 'package:fixit/components/google_or_facebook.dart';
import 'package:fixit/components/signup_checkbox.dart';
import 'package:fixit/components/textfromfield_box.dart';
import 'package:fixit/style/colors.dart';
import 'package:flutter/material.dart';

import '../account_setup_process_for_service_provider/im_looking_for.dart';
import 'loginscreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // final double lineSize = MediaQuery.of(context).size.width * 0.38;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Image.asset("assets/logo/logofixit.png"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 36, left: 24, right: 24),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Text(
                "Enter your email and password to login",
                style: TextStyle(fontSize: 24, color: Colors.grey),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFromFieldBoxUser(
                controller: nameController,
                hintText: "Full name",
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                prefixIcon: Icons.person,
              ),
              const SizedBox(
                height: 16,
              ),
              TextFromFieldBoxUser(
                controller: emailController,
                hintText: "Enter your email",
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                prefixIcon: Icons.mail_rounded,
              ),
              const SizedBox(
                height: 16,
              ),
              TextFromFieldBoxPassword(
                controller: passwordController,
                hintText: "Enter your password",
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                prefixIcon: Icons.lock,
              ),
              const SizedBox(height: 8,),
              const SignupCheckBox(),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ImLookingFor()));
                },
                child: ButtonStyles(
                  title: "Sign Up",
                  colors: blueColors,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const LoginScreen()));
                },
                child: const Text.rich(
                  TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    children: [
                      TextSpan(
                        text: "Sign in now",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const GoogleOrFacebook(
                title: "Sign up with",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
