import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key, required this.name, required this.password});


final String name;
final String password;
  final keys = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
              child:  Text(
                name,
                style: const TextStyle(fontSize: 25),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: const Text("Please enter code that we've sent to"),
            ),
            Text(
              password,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25),
              child: const Text(
                '01:57',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ),
            Form(
              key: keys,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 60,
                ),
                child: PinCodeTextField(
                  appContext: context,

                  pastedTextStyle: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                  length: 4,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 50,
                    fieldWidth: 50,
                    activeFillColor: const Color.fromARGB(255, 0, 0, 0),
                    inactiveColor: const Color.fromARGB(255, 183, 182, 182),
                  ),
                  // cursorColor: Colors.black,
                  //   animationDuration: const Duration(milliseconds: 300),
                  //   enableActiveFill: true,
                  //   // errorAnimationController: errorController,
                  //   // controller: textEditingController,
                  //   keyboardType: TextInputType.number,
                  //   boxShadows: const [
                  //     BoxShadow(
                  //       offset: Offset(0, 1),
                  //       color: Colors.black12,
                  //       blurRadius: 10,
                  //     )
                  //   ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: const Text("Didn't you receive any code?"),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: const Text(
                "RESEND CODE",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
              ),
            ),
            Container(
              width: 300,
              height: 50,
              margin: const EdgeInsets.only(top: 35),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.red,
              ),
              child: const Center(
                child: Text(
                  'Verify',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
