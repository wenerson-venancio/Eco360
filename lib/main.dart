import 'package:eco360/pages/empresa.dart';
import 'package:eco360/pages/login.dart';
import 'package:eco360/pages/pagar_page.dart';
import 'package:flutter/material.dart';
import 'pages/caixa_page.dart';
import 'pages/estoque_page.dart';
import 'pages/home_page.dart';
import 'pages/receber_page.dart';
import 'pages/registradora_page.dart';
import 'pages/vendas_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: {
        '/home': (context) => const HomePage(),
        '/caixa': (context) => const CashierPage(),
        '/receber': (context) => const ReceivePage(),
        '/pagar': (context) => const PayPage(),
        '/venda': (context) => const SalesPage(), 
        '/registradora': (context) => const RegisterPage(),
        '/estoque':(context) => const InventoryPage(),
        '/empresa':(context) => const Company(),
        '/login':(context) => const LoginPage(),
      },
      initialRoute: '/caixa',
      debugShowCheckedModeBanner: false,
    );
  }
}
