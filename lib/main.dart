
import 'package:flutter/material.dart';



void main() => runApp(CounterApplication());


class CounterApplication extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Counter Application',
      home: CounterScreenState(),
    );
  }
}


class CounterScreenState extends StatefulWidget {
  @override
  CounterScreen createState() => CounterScreen();
}

  class CounterScreen extends State<CounterScreenState>{

   int _count = 0;

   void _incrementCount(){
     setState(() {
       _count++;
     });
}

void _decrementCount() {
     setState((){
       _count--;
  });
}

  @override
   Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text('Counter Screen'),),
     body: Center(
      child:Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: [
         FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _incrementCount,
        ),
       Text("${_count}"),
       FloatingActionButton(
        child: Icon(Icons.remove),
        onPressed: _decrementCount,
      )
     ],
    ),
   )
  );
 }
}