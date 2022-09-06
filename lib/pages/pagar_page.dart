import 'package:flutter/material.dart';

class PayPage extends StatelessWidget {
  const PayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contas a Pagar', style: TextStyle(fontSize: 17),),
        backgroundColor: const Color.fromARGB(255, 3, 32, 65),
      ),
    );
  }
}
