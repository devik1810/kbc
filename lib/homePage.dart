import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool t=false;
  List Questions = [
    "1.Who is Peterolium Minister in 2000 in India",
    "2.Who is 1st Female Pm of India",
    "3.Which one of the following river flows between Vindhyan and Satpura ranges?",
    "4.The Central Rice Research Station is situated in?",
    "5.Who among the following wrote Sanskrit grammar?",
  ];
  List Ans = [
    "Hardeep Singh Puri",
    "Indira Gandhi",
    "Narmada",
    "Cuttack",
    "Panini",
  ];

  List OptA = [
    "Narandre Modi",
    "Indira Gandhi",
    "Narmada",
    "Chennai",
    "Kalidasa",
  ];
  List OptB = [
    "Rahul Gandhi",
    "Rekha",
    "Mahanadi",
    "Cuttack",
    "Charak",
  ];
  List OptC = [
    "Akshar Kumar",
    "Srusti",
    "Son",
    "Bangalore",
    "Panini",
  ];
  List OptD = [
    "Hardeep Singh Puri",
    "Sarasvati",
    "Netravati",
    "Quilon",
    "Aryabhatt",
  ];

  List<Color> c=[Colors.yellow,Colors.red,Colors.purple,Colors.pink,Colors.white];
  List UserAns = [];

  int i = 0,j=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: c[i],
                    alignment: Alignment.center,
                    child: Text(
                      "${Questions[i]}",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: InkWell(
                                onTap: () {
                                  if(j<6)
                                  {
                                    UserAns.add("${OptA[i]}");
                                    setState(() {
                                      if(UserAns[i] == Ans[i]) {
                                        Navigator.pushNamed(context, 'thi');
                                        if(i<4)
                                        {
                                          i++;
                                          j++;
                                        }
                                        if(i==4) {
                                          j++;
                                        }
                                      }
                                      else
                                      {
                                        Navigator.pushNamed(context, 'sec');
                                        i=0;
                                        j=0;
                                        UserAns.clear();
                                      }
                                    });
                                  }
                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 10),
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Color(0xff1E2022),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "A.${OptA[i]}",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              flex: 1,
                              child: InkWell(
                                onTap: () {
                                  if(j<6)
                                  {
                                    UserAns.add("${OptB[i]}");
                                    setState(() {
                                      if(UserAns[i] == Ans[i]) {
                                        Navigator.pushNamed(context, 'thi');
                                        if(i<4)
                                        {
                                          i++;
                                          j++;
                                        }
                                        if(i==4) {
                                          j++;
                                        }
                                      }
                                      else
                                      {
                                        Navigator.pushNamed(context, 'sce');
                                        i=0;
                                        j=0;
                                        UserAns.clear();
                                      }
                                    });
                                  }
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Color(0xff1e2022),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "C.${OptB[i]}",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: InkWell(
                                onTap: () {
                                  if(j<6)
                                  {
                                    UserAns.add("${OptC[i]}");

                                    setState(() {
                                      if(UserAns[i] == Ans[i]) {
                                        Navigator.pushNamed(context, 'thi');
                                        if(i<4)
                                        {
                                          i++;
                                          j++;
                                        }
                                        if(i==4) {
                                          j++;
                                        }
                                      }
                                      else
                                      {
                                        Navigator.pushNamed(context, 'sce');
                                        i=0;
                                        j=0;
                                        UserAns.clear();
                                      }
                                    });
                                  }
                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 10),
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Color(0xff1e2022),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "B.${OptC[i]}",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              flex: 1,
                              child: InkWell(
                                onTap: () {
                                  if(j<6)
                                  {
                                    UserAns.add("${OptD[i]}");

                                    setState(() {
                                      if(UserAns[i] == Ans[i]) {
                                        Navigator.pushNamed(context, 'thi');
                                        if(i<4)
                                        {
                                          i++;
                                          j++;
                                        }
                                        if(i==4) {
                                          j++;
                                        }
                                      }
                                      else
                                      {
                                        Navigator.pushNamed(context, 'sce');
                                        i=0;
                                        j=0;
                                        UserAns.clear();
                                      }
                                    });
                                  }
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Color(0xff1e2022),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "D.${OptD[i]}",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Visibility(
                          visible: j>=6?true:false,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  j=0;
                                  i=0;
                                  UserAns.clear();
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purple),
                              child: Center(child: Text("Reset",style: TextStyle(fontSize: 20),),)),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ));
  }
}