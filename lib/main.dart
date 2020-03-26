import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SimpleCalculator(),
    );
  }
}

class SimpleCalculator extends StatefulWidget {
  @override
  _SimpleCalculatorState createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  Widget buildButton(
      String buttonText, double buttonHeight, Color buttonColor) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.10 * buttonHeight,
      color: buttonColor,
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
            side: BorderSide(
                color: Colors.white, width: 1, style: BorderStyle.solid)),
        padding: EdgeInsets.all(16.0),
        child: Text(
          buttonText,
          style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.normal,
              color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Calculator'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 20, 20, 0),
            child: Text('0',
                style: TextStyle(
                  fontSize: 38.0,
                )),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: Text('0',
                style: TextStyle(
                  fontSize: 48.0,
                )),
          ),
          Expanded(
            child: Divider(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Table(
                  children: [
                    TableRow(children: [
                      buildButton('C', 1, Colors.redAccent),
                      buildButton('⌫', 1, Colors.blue),
                      buildButton('÷', 1, Colors.blue)
                    ]),

                    TableRow(children: [
                      buildButton('7', 1, Colors.black54),
                      buildButton('8', 1, Colors.black54),
                      buildButton('9', 1, Colors.black54)
                    ]),

                    TableRow(children: [
                      buildButton('4', 1, Colors.black54),
                      buildButton('5', 1, Colors.black54),
                      buildButton('6', 1, Colors.black54)
                    ]),

                    TableRow(children: [
                      buildButton('1', 1, Colors.black54),
                      buildButton('2', 1, Colors.black54),
                      buildButton('3', 1, Colors.black54)
                    ]),

                    TableRow(children: [
                      buildButton('.', 1, Colors.black54),
                      buildButton('0', 1, Colors.black54),
                      buildButton('00', 1, Colors.black54)
                    ])
                  ],
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        buildButton('×', 1, Colors.blue),
                      ]
                    ),

                    TableRow(
                      children: [
                        buildButton('-', 1, Colors.blue),
                      ]
                    ),

                    TableRow(
                      children: [
                        buildButton('+', 1, Colors.blue),
                      ]
                    ),

                    TableRow(
                      children: [
                        buildButton('=', 2, Colors.redAccent),
                      ]
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
