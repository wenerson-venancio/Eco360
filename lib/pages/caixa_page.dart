import 'dart:convert';

import 'package:eco360/pages/usuario_api.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CashierPage extends StatefulWidget {
  const CashierPage({Key? key}) : super(key: key);

  @override
  State<CashierPage> createState() => _CashierPageState();
}

class _CashierPageState extends State<CashierPage> {
  Future<List> pegarUsuarios() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      return jsonDecode(utf8.decode(response.bodyBytes));
    } else {
      throw Exception('Error ao carregar os dados do servidor');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fluxo de Caixa',
          style: TextStyle(fontSize: 17),
        ),
        backgroundColor: const Color.fromARGB(255, 3, 32, 65),
      ),
      body: FutureBuilder<List>(
        future: pegarUsuarios(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('Erro ao carregar o usuário'),
            );
          }

          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var usuario = snapshot.data![index];
                return ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UsuarioPage(
                              usuario: usuario
                            )
                        )
                    );
                  },
                  leading: CircleAvatar(
                    child: Text('${usuario['id']}'),
                  ),
                  title: Text(usuario['name']),
                  subtitle: Text(usuario['website']),
                );
              },
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
