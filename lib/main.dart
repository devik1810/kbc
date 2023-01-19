import 'package:flutter/material.dart';
import 'package:kbc/secongPage.dart';
import 'package:kbc/thirdPage.dart';

import 'homePage.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      //initialRoute: L,
      routes: {
        '/':(context)=>HomePage(),
        // 'ver':(context)=>loose(),
        'sec':(context)=>SecondPage(),
        'thi':(context)=>ThirdPage(),
      },
    ),
  );
}