import 'package:flutter/material.dart';

class SalesPage extends StatelessWidget {
  const SalesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vendas', style: TextStyle(fontSize: 17),),
        backgroundColor: const Color.fromARGB(255, 3, 32, 65),
      )
    );
  }
}
