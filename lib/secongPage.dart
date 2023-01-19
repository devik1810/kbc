import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(backgroundColor: Colors.red,),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text("You Ticked wrong Answer !!!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                Center(
                  child: ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, '/');
                  },style: ElevatedButton.styleFrom(backgroundColor: Colors.red), child: Text('Restart',style: TextStyle(fontSize: 20),)),
                ),
              ],
            )
        ));
  }
}