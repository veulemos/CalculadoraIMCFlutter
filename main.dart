import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MinhaCalc(),
    );
  }
}

class MinhaCalc extends StatefulWidget {
  @override
  _MinhaCalc createState() => _MinhaCalc();
}

class _MinhaCalc extends State<MinhaCalc> {
  TextEditingController pesoController = TextEditingController(text: '');
  TextEditingController alturaController = TextEditingController(text: '');
  double imc;
  String classificacao;
  Color corResultado;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            imc == null
                ? Text('digite os valores')
                : Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150),
                      border: Border.all(
                        width: 10,
                        color: Colors.purple,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '24.5',
                          style: TextStyle(
                            fontSize: 48,
                            color: Colors.purple,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Peso normal',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.purple,
                          ),
                        )
                      ],
                    ),
                  ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text('Seu peso'),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: 75,
                      child: TextField(
                        controller: pesoController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          suffixText: 'kg',
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  children: [
                    Text('Sua altura'),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: 75,
                      child: TextField(
                        controller: alturaController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          suffixText: 'm',
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  print(pesoController.text);
                  print(alturaController.text);
                },
                child: Text(
                  'Calcular',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
