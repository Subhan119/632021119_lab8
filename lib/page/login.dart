import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab8/page/Success.dart';
import 'package:lab8/services/auth_services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page")
        ),
        body: Center(
          child:GoogleAuthButton(
            onPressed:() {
              GoogleAuthService().signinWitthGoogle().then((value) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Loginss(),
                ) );
              },);},
            ),
           
            ),
    );
  }
}