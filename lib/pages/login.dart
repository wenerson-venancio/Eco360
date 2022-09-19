// ignore_for_file: avoid_unnecessary_containers, sort_child_properties_last, sized_box_for_whitespace

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
                  const TextField(
                    cursorHeight: 20,
                    decoration: InputDecoration(
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
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _securityText = !_securityText;
                              });
                            },
                            icon: Icon(_securityText ? MdiIcons.eyeOff : MdiIcons.eyeOutline))),
                            obscureText: _securityText,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: const Icon(MdiIcons.checkboxMarkedOutline,
                              color: Color.fromARGB(255, 107, 128, 144)),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          child: const Text(
                            'Lembrar meus dados?',
                            style: TextStyle(
                                color: Color.fromARGB(255, 107, 128, 144)),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Column(
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
                          'Versão: 1.1.1',
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
}
