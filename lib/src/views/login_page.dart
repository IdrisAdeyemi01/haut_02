import 'package:flutter/material.dart';

import '../shared_widgets/app_elevated_button.dart';
import '../shared_widgets/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: const [
                CircleAvatar(
                  radius: 22,
                  backgroundColor: Color(0xffF7F7F9),
                  child: Icon(Icons.arrow_back_ios),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
           
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Hello Again!',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Fill your details or continue with social media',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomTextField(
              title: 'Email Address',
              hintText: 'idris@gmail.com',
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomTextField(
              title: 'Password',
              hintText: '***********',
              isPasswordField: true,
            ),
            const SizedBox(
              height: 12,
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Recovery Password',
                textAlign: TextAlign.right,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            AppElevatedButton(
              buttonLabel: 'Sign Up',
              onPressed: () {
                
              },
            )
          ]),
        ),
      ),
    );
  }
}
