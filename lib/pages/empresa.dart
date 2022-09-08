// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Company extends StatelessWidget {
  const Company({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Container(
          color: Color.fromARGB(255, 231, 234, 236),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 50,
                        color: const Color.fromARGB(255, 3, 32, 65),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 1, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              IconButton(
                                  onPressed: null,
                                  icon: BackButton(
                                    color: Colors.white,
                                  )),
                              Text(
                                'Empresas',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ))
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () => print('teste empresas'),
                            child: Container(
                              height: 150,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 241, 241, 241),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      bottomLeft: Radius.circular(5)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 10,
                                    )
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 25,
                                      decoration: const BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Color.fromARGB(
                                                      146, 138, 138, 138)))),
                                      child: Row(
                                        children: const [
                                          Text(
                                            'Etty Calçados',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 15,),
                                    Row(
                                      children: [
                                        Container(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Container(
                                                  child: Column(
                                                    children: const [
                                                      Text(
                                                        'CNPJ', style: TextStyle(fontSize: 13, color: Color.fromARGB(255, 60, 94, 116)),
                                                      ), 
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Container(
                                                child: Column(
                                                  children: const [
                                                    Text('000.000.0000-00', style: TextStyle(fontWeight: FontWeight.bold),)
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 80,),
                                        Container(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Column(
                                                  children: const [
                                                    Text('Cidade', style: TextStyle(color: Color.fromARGB(
                                                              255,
                                                              60,
                                                              94,
                                                              116)),)
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 5,),
                                              Container(
                                                child: Column(
                                                  children: const [
                                                    Text('Cascavel', style: TextStyle(fontWeight: FontWeight.bold),)
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 13,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 37, 70, 108),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 13,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 3, 32, 65),
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ));
  }
}
