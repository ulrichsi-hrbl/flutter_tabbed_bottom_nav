import 'package:authenticate/authenticate.dart';
import 'package:flutter/material.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Authenticate(),
    );
  }
}
