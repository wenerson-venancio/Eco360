// ignore_for_file: avoid_unnecessary_containers, sort_child_properties_last, sized_box_for_whitespace, prefer_const_constructors, avoid_print

import 'package:eco360/pages/empresa.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _securityText = true;
  bool _checkButton = false;

  String email = 'wenerson.venancio';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 217, 225, 232),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Container(
              margin: const EdgeInsets.only(top: 140),
              height: 150,
              width: 220,
              child: SvgPicture.asset('assets/logo360.svg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Usuário',
                    style: TextStyle(color: Color.fromARGB(255, 107, 128, 144)),
                  ),
                  TextField(
                    onChanged: (text) {
                      email = text;
                    },
                    keyboardType: TextInputType.emailAddress,
                    cursorHeight: 20,
                    decoration: InputDecoration(
                      fillColor: Colors.amber,
                      border: UnderlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Senha',
                    style: TextStyle(color: Color.fromARGB(255, 107, 128, 144)),
                  ),
                  TextField(
                    onChanged: (text) {
                      password = text;
                    },
                    decoration: InputDecoration(
                        focusColor: Color.fromARGB(255, 52, 97, 133),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _securityText = !_securityText;
                              });
                            },
                            icon: Icon(
                              _securityText
                                  ? MdiIcons.eyeOff
                                  : MdiIcons.eyeOutline,
                              color: Color.fromARGB(255, 52, 97, 133),
                            ))),
                    obscureText: _securityText,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  MaterialButton(
                    splashColor: Color.fromARGB(255, 214, 219, 225),
                    highlightColor: const Color.fromARGB(255, 217, 225, 232),
                    onPressed: () {
                      setState(() {
                        _checkButton = !_checkButton;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          _checkButton
                              ? MdiIcons.checkboxMarkedOutline
                              : MdiIcons.checkboxBlankOutline,
                          color: Color.fromARGB(148, 107, 128, 144),
                          size: 19,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Lembrar meus dados?',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(148, 107, 128, 144)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (email == 'wenerson.venancio' &&
                          password == 'eco456') {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Company()));
                      } else {
                        _openDialog(context);
                      }
                    },
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('Entrar',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15)),
                            ],
                          ),
                          height: 40,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 27, 96, 156),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 30,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Redefinir minha senha',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 3, 65, 131),
                                  decoration: TextDecoration.underline),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Versão: ',
                          style: TextStyle(
                              fontSize: 12, color: Color.fromARGB(94, 0, 0, 0)),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 65,
                  ),
                  Container(
                    height: 34,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Image.asset('assets/eco_337x69px.png')],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  _openDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          MainAxisAlignment.center;
          return CupertinoAlertDialog(
            title: Text('Login'),
            content: Text('Dados Inválidos'),
          );
        });
  }
}
