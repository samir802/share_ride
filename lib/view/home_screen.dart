import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key, required this.name, required this.email, required this.phone, required this.password});

final String name;
final String email;
final String phone;
final String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text("Full Name:$name"),
              Text("Email address:$email"),
              Text("Phone Number: $phone"),
              Text("Password: $password"),
            ],
          ),
        ),
      ),
    );
  }
}