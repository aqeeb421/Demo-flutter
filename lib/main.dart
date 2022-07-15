import 'package:demo/buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int firstNum;
  late int secondNum;
  late String histroy = "";
  late String textDisplay ="";
  late String res="";
  late String operation="";

  void btnCLick(String btnVal) {
    print(btnVal);
    if (btnVal == "AC") {
      firstNum = 0;
      secondNum = 0;
      textDisplay = "";
      res = "";
      histroy = "";
    }else if(btnVal == "+/-"){
      if(textDisplay[0] != "-"){
        res = "-" + textDisplay;
      }else{
        res = textDisplay.substring(1);
      }
    }
    else if(btnVal == "+" || btnVal == "-" || btnVal == "X" || btnVal == "/"){
      firstNum = int.parse(textDisplay);
      res = "";
      operation = btnVal;

    }else if(btnVal == "="){
      secondNum = int.parse(textDisplay);
      if(operation=="+") {
        res = (firstNum + secondNum).toString();
        histroy =  firstNum.toString() + operation.toString() + secondNum.toString();
      } if(operation=="-") {
        res = (firstNum - secondNum).toString();
        histroy =  firstNum.toString() + operation.toString() + secondNum.toString();
      } if(operation=="X") {
        res = (firstNum * secondNum).toString();
        histroy =  firstNum.toString() + operation.toString() + secondNum.toString();
      } if(operation=="/") {
        res = (firstNum / secondNum).toString();
        histroy =  firstNum.toString() + operation.toString() + secondNum.toString();
      }
    }else{
      res = int.parse(textDisplay + btnVal).toString();
    }

    setState(() {
      textDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.only(right: 12),
                child: Text(
                  histroy,
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                 textDisplay,
                  style: TextStyle(
                    fontSize: 48.0,
                    color: Colors.white,
                  ),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Buttons(
                  textBtn: 'AC',
                  fillColor: 0xFF8ac4dd,
                  textSize: 20.0,
                  textColor: 0xFFFFFFFF,
                  callback: btnCLick,
                ),
                Buttons(
                  textBtn: '+/-',
                  fillColor: 0xFF8ac4dd,
                  textSize: 25.0,
                  textColor: 0xFFFFFFFF,
                  callback: btnCLick,
                ),
                Buttons(
                  textBtn: '%',
                  fillColor: 0xFF8ac4dd,
                  textSize: 30.0,
                  textColor: 0xFFFFFFFF,
                  callback: btnCLick,
                ),
                Buttons(
                  textBtn: '/',
                  fillColor: 0xFFf4d160,
                  textSize: 30.0,
                  textColor: 0xFFFFFFFF,
                  callback: btnCLick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Buttons(
                  textBtn: '7',
                  fillColor: 0xFF8ac4dd,
                  textSize: 25.0,
                  textColor: 0xFFFFFFFF,
                  callback: btnCLick,
                ),
                Buttons(
                  textBtn: '8',
                  fillColor: 0xFF8ac4dd,
                  textSize: 25.0,
                  textColor: 0xFFFFFFFF,
                  callback: btnCLick,
                ),
                Buttons(
                  textBtn: '9',
                  fillColor: 0xFF8ac4dd,
                  textSize: 25.0,
                  textColor: 0xFFFFFFFF,
                  callback: btnCLick,
                ),
                Buttons(
                  textBtn: 'X',
                  fillColor: 0xFFf4d160,
                  textSize: 25.0,
                  textColor: 0xFFFFFFFF,
                  callback: btnCLick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Buttons(
                  textBtn: '4',
                  fillColor: 0xFF8ac4dd,
                  textSize: 25.0,
                  textColor: 0xFFFFFFFF,
                  callback: btnCLick,
                ),
                Buttons(
                  textBtn: '5',
                  fillColor: 0xFF8ac4dd,
                  textSize: 25.0,
                  textColor: 0xFFFFFFFF,
                  callback: btnCLick,
                ),
                Buttons(
                  textBtn: '6',
                  fillColor: 0xFF8ac4dd,
                  textSize: 25.0,
                  textColor: 0xFFFFFFFF,
                  callback: btnCLick,
                ),
                Buttons(
                  textBtn: '-',
                  fillColor: 0xFFf4d160,
                  textSize: 40.0,
                  textColor: 0xFFFFFFFF,
                  callback: btnCLick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Buttons(
                  textBtn: '1',
                  fillColor: 0xFF8ac4dd,
                  textSize: 25.0,
                  textColor: 0xFFFFFFFF,
                  callback: btnCLick,
                ),
                Buttons(
                  textBtn: '2',
                  fillColor: 0xFF8ac4dd,
                  textSize: 25.0,
                  textColor: 0xFFFFFFFF,
                  callback: btnCLick,
                ),
                Buttons(
                  textBtn: '3',
                  fillColor: 0xFF8ac4dd,
                  textSize: 25.0,
                  textColor: 0xFFFFFFFF,
                  callback: btnCLick,
                ),
                Buttons(
                  textBtn: '+',
                  fillColor: 0xFFf4d160,
                  textSize: 30.0,
                  textColor: 0xFFFFFFFF,
                  callback: btnCLick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 200,
                  child: Buttons(
                    textBtn: '0',
                    fillColor: 0xFF8ac4dd,
                    textSize: 25.0,
                    textColor: 0xFFFFFFFF,
                    callback: btnCLick,
                  ),
                ),
                Buttons(
                  textBtn: '.',
                  fillColor: 0xFF8ac4dd,
                  textSize: 40.0,
                  textColor: 0xFFFFFFFF,
                  callback: btnCLick,
                ),
                Buttons(
                  textBtn: '=',
                  fillColor: 0xFFf4d160,
                  textSize: 30.0,
                  textColor: 0xFFFFFFFF,
                  callback: btnCLick,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
