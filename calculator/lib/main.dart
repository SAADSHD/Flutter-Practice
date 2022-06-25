import 'package:flutter/material.dart';
import 'buttonwidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text('10x10',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black54
                    ),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text('100',
                      style: TextStyle(
                      fontSize: 48,
                    ),

                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
            SizedBox(height: 20),
            Divider(thickness: 1,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  button(textcolor: Colors.indigo, text: 'AC',textsize: 24, onPress: (){}),
                  button(textcolor: Colors.indigo, text: 'C',textsize: 24, onPress: (){}),
                  button(textcolor: Colors.indigo, text: '%', onPress: (){}),
                  button(textcolor: Colors.indigo, text: '/', onPress: (){})
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button(text: '7', onPress: (){}),
                button(text: '8', onPress: (){}),
                button(text: '9', onPress: (){}),
                button(textcolor: Colors.indigo, text: 'x', onPress: (){})
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button(text: '4', onPress: (){}),
                button(text: '5', onPress: (){}),
                button(text: '6', onPress: (){}),
                button(textcolor: Colors.indigo, text: '-',textsize: 40, onPress: (){})
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button(text: '1', onPress: (){}),
                button(text: '2', onPress: (){}),
                button(text: '3', onPress: (){}),
                button(textcolor: Colors.indigo, text: '+',textsize: 30, onPress: (){})
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button(text: '.', onPress: (){}),
                button(text: '0', onPress: (){}),
                button(text: '00', onPress: (){}),
                button(textcolor: Colors.white, text: '=', btncolor: Colors.indigo, onPress: (){})
              ],
            ),
          ],




        ),
      ]
        ),
      ),
    );
  }




}
