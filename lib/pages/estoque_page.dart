import 'package:flutter/material.dart';

class InventoryPage extends StatelessWidget {
  const InventoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Estoque', style: TextStyle(fontSize: 17),),
        backgroundColor: const Color.fromARGB(255, 3, 32, 65),
      ),
    );
  }
}
