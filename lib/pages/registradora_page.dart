import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registradora', style: TextStyle(fontSize: 17),),
        backgroundColor: const Color.fromARGB(255, 3, 32, 65),
      ),
    );
  }
}
