// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class UsuarioPage extends StatelessWidget {
  Map<String, dynamic> usuario;

  UsuarioPage({Key? key, required this.usuario}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(usuario['name']),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(usuario['name']),
              Text(usuario['username']),
              Text(usuario['phone']),
              Text(usuario['email']),
            ],
          ),
        ),
      ),
    );
  }
}
