import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Общежития КубГАУ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 26;
  bool _pressed = false;

  void _incrementCounter() {
    setState(() {
      if (_pressed == true) {
        _counter++;
      } else {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Expanded(
                    child: Image.asset('assets/images/lab3image.png'),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Общежитие №20',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Краснодар, ул. Калинина, 13',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    TextButton.icon(
                      onPressed: () => setState(() {
                        _pressed = !_pressed;
                        _incrementCounter();
                      }),
                      icon: Icon(Icons.favorite,
                          color: _pressed ? Colors.red : Colors.grey),
                      label: Text('$_counter'),
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            
                          },
                          color:Colors.green,
                          icon: const Icon(Icons.call)),
                        const Text(
                          'ПОЗВОНИТЬ',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            
                          },
                          color:Colors.green,
                          icon: const Icon(Icons.near_me)),
                        const Text(
                          'МАРШРУТ',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            
                          },
                          color:Colors.green,
                          icon: const Icon(Icons.share)),
                        const Text(
                          'ПОДЕЛИТЬСЯ',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(35, 25, 25, 10),
                  child: const Text(
                    'Студенческий городок или так называемый кампус Кубанского ГАУ состоит из двадцати общежитий, в которых проживает более 8000 студентов, что составляет 96% от всех нуждающихся. Студенты первого курса обеспечены местами в общежитии полностью. В соответствии с Положением о студенческих общежитиях университета, при поселении между администрацией и студентами заключается договой найма жилого помещения. Воспитательная работа в общежитиях направлена на улучшение быта, соблюдение правил внутреннего распорядка, отсутствия асоциальных явлений в молодежной среде. Условия проживания в общежитиях университетского кампуса полностью отвечают санитарным нормам и требованиям: наличие оборудованных кухонь, душевых комнат, прачечных, читальных залов, комнат самоподготовки, помещений для заседаний студенческих советов и наглядной агитации. С целью улучшения условий быта студентов активно работает система студенческого самоуправления - студенческие советы организуют всю работу по самообслуживанию.',
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
