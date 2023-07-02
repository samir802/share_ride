import 'package:flutter/material.dart';
import 'package:share_ride/view/home_screen.dart';
import 'package:share_ride/view/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final keys = GlobalKey<FormState>();
  final TextEditingController nameController =  TextEditingController();
  final TextEditingController emailController =  TextEditingController();
  final TextEditingController phoneController =  TextEditingController();
  final TextEditingController passwordController =  TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30, top: 50),
              width: double.infinity,
              child: Form(
                key: keys,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'New Account',
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 4, 72, 128),
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Lets start with creating an account',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 10),
                      child: const Text(
                        'Full Name',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    TextFormField(
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        label: const Text("Enter your full name"),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 2.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        hintText: ("Samir Shrestha"),
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                      controller: nameController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'This field is required';
                        }
                        return null;
                      },
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 10),
                      child: const Text(
                        'Email Address',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    TextFormField(
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        label: const Text("Enter your email address"),
                        border: const OutlineInputBorder(
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
                      margin: const EdgeInsets.only(top: 20, bottom: 10),
                      child: const Text(
                        'Phone Number',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    TextFormField(
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        label: const Text("Enter your phone number"),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 2.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        hintText: ("+977 0000000000"),
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                      controller: phoneController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'This field is required';
                        }
                        return null;
                      },
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 10),
                      child: const Text(
                        'Password',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    TextFormField(
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        label: const Text("Enter your password"),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 2.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        hintText: ("********"),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Details(
                          name: nameController.text,
                          email: emailController.text,
                          phone: phoneController.text,
                          password: passwordController.text,
                        );
                      }));
                    }
                  },
                  child: const Text(
                    "Create Account",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 70),
                    child: const Text('Already have an account?'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginScreen();
                      }));
                    },
                    child: const Text(
                      'Log In',
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
