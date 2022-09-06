import 'package:flutter/material.dart';

class CashierPage extends StatelessWidget {
  const CashierPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fluxo de Caixa', style: TextStyle(fontSize: 17),),
        backgroundColor: const Color.fromARGB(255, 3, 32, 65),
      ),
    );
  }
}
