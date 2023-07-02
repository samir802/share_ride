import 'package:flutter/material.dart';
import 'package:share_ride/view/register_screen.dart';

import 'otp.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final keys = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 60, left: 30, right: 30),
              width: double.infinity,
              child: Form(
                key: keys,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 4, 72, 128),
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10, top: 20),
                      child: const Text(
                        'Email',
                        style:
                            TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    TextFormField(
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 2.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        hintText: ("abc@gmail.com"),
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                      controller: emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'This field is required';
                        }
                        return null;
                      },
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10, top: 20),
                      child: const Text(
                        'Password',
                        style:
                            TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    TextFormField(
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 2.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        hintText: (""),
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                      controller: passwordController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'This field is required';
                        }
                        return null;
                      },
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color: Color.fromARGB(255, 4, 72, 128),
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 4, 72, 128),
                  ),
                  onPressed: () async {
                    if (keys.currentState!.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MyApp(
                          name: emailController.text,
                          password: passwordController.text,
                        );
                      }));
                    }
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
              width: double.infinity,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 70),
                    child: const Text('Don\'t have a account?'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return RegisterScreen();
                        },
                      ));
                    },
                    child: const Text(
                      'Create one',
                      style: TextStyle(
                        color: Color.fromARGB(255, 4, 72, 128),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
