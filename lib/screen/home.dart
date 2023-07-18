import 'package:flutter/material.dart';
import 'package:flutter_echarts/flutter_echarts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
class graph extends StatefulWidget {
  
  
  const graph({super.key});

  @override
  State<graph> createState() => _graphState();
}

class _graphState extends State<graph> {
  @override
  Widget build(BuildContext context) {
    late int selectedRadio = 0;
    void initState() {
      super.initState();
      selectedRadio = 0;
    }

    setSelectedRadio(int value) {
      setState(() {
        selectedRadio = value;
      });
    }

    return Scaffold(
      appBar: AppBar(
          // backgroundColor: Color.fromARGB(230, 5, 119, 60),
          backgroundColor: Color.fromARGB(200, 17, 126, 143),
          leading: IconButton(
            icon: Icon(Icons.menu), // Replace with desired icon
            onPressed: () {
              // Handle button tap
            },
          ),
          actions: [
            Center(
              child: Text(
                '16-july-2023',
                style:
                    TextStyle(fontWeight: FontWeight.bold, fontFamily: "Lora"),
              ),
            ),
            IconButton(
              icon: Icon(Icons.login_outlined),
              onPressed: () {
                // Handle search button tap
              },
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text("Log in"),
            ))
          ]),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: 1500,
              height: 5,
              color: Color.fromARGB(255, 239, 166, 10),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 70),
                      child: Text('Project / Job Code'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 400),
                      child: Text('From Date'),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 320),
                      child: Text('To Date'),
                    )
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60.0, right: 80.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 10, right: 20),
                  child: Column(
                    children: [
                      Text(
                        'FTY',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: "Lora"),
                      ),
                      Radio<int>(
                        value: 1,
                        groupValue: selectedRadio,
                        activeColor: Colors.green,
                        onChanged: (value) {
                          print("Radio $value");
                          setSelectedRadio(value!);
                        },
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'FTM',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ),
                    Radio<int>(
                      value: 2,
                      groupValue: selectedRadio,
                      activeColor: Colors.green,
                      onChanged: (value) {
                        print("Radio $value");
                        setSelectedRadio(value!);
                      },
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60.0, right: 80.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '15-06-2023',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 80),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '15-07-2023',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Row(
                children: [
                  Container(
                    width: 1365,
                    height: 4,
                    color: Color.fromARGB(255, 239, 166, 10),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  width: 1365,
                  height: 45,
                  color: Color.fromARGB(200, 17, 126, 143),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 600,
                        height: 80,
                        // color:Colors.blue,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color.fromARGB(255, 48, 53, 178),
                                Colors.red,
                                Color.fromARGB(180, 205, 12, 9),
                              ],
                            )),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20.0, left: 10),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.book_online,
                                    color: Color.fromARGB(255, 4, 27, 46),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25.0, left: 30),
                                    child: Text(
                                      'Total Request',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 25.0, left: 300),
                                  child: Text(
                                    '48',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top: 25.0, left: 50),
                    child: Row(
                      children: [
                        Container(
                          width: 300,
                          height: 234,
                          // color:Colors.orange,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5.0, left: 5, right: 5),
                                    child: Container(
                                      width: 300,
                                      height: 50,
                                      // color:Colors.blue,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Color.fromARGB(211, 225, 24, 10),
                                              Color.fromARGB(177, 155, 10, 10),
                                            ],
                                          )),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10.0, left: 10),
                                            child: Column(
                                              children: [
                                                Icon(
                                                  Icons.check,
                                                  color: Colors.black,
                                                )
                                              ],
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Center(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 15.0, left: 50),
                                                  child: Text(
                                                    'Approved',
                                                    style: TextStyle(
                                                      fontSize: 15.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 15, left: 70),
                                                child: Text(
                                                  '188',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5.0, left: 5, right: 5),
                                        child: Container(
                                          width: 300,
                                          height: 50,
                                          // color:Colors.blue,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              gradient: LinearGradient(
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                                colors: [
                                                  Colors.blue,
                                                  Color.fromARGB(
                                                      129, 6, 139, 180),
                                                ],
                                              )),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10.0, left: 10),
                                                child: Column(
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .check_box_outline_blank,
                                                      color: Colors.black,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Column(
                                                children: [
                                                  Center(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 15.0,
                                                              left: 50),
                                                      child: Text(
                                                        'Rejected',
                                                        style: TextStyle(
                                                          fontSize: 15.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 15, left: 80),
                                                    child: Text(
                                                      '40',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5.0, left: 5, right: 5),
                                        child: Container(
                                          width: 300,
                                          height: 50,
                                          // color:Colors.blue,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              gradient: LinearGradient(
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                                colors: [
                                                  Colors.yellow,
                                                  Color.fromARGB(
                                                      129, 155, 128, 10),
                                                ],
                                              )),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10.0, left: 10),
                                                child: Column(
                                                  children: [
                                                    Icon(
                                                      Icons.check,
                                                      color: Colors.black,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Column(
                                                children: [
                                                  Center(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 15.0,
                                                              left: 50),
                                                      child: Text(
                                                        'Review',
                                                        style: TextStyle(
                                                          fontSize: 15.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 15, left: 90),
                                                    child: Text(
                                                      '112',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 300,
                                          height: 50,
                                          // color:Colors.blue,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              gradient: LinearGradient(
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                                colors: [
                                                  Color.fromARGB(
                                                      255, 0, 60, 110),
                                                     Color.fromARGB(156, 8, 106, 198), 
                                                  Color.fromARGB(
                                                      114, 3, 64, 121),
                                                ],
                                              )),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10.0, left: 5),
                                                child: Column(
                                                  children: [
                                                    Icon(
                                                      Icons.check,
                                                      color: Colors.black,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Column(
                                                children: [
                                                  Center(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 15.0,
                                                              left: 45),
                                                      child: Text(
                                                        ' To Approve',
                                                        style: TextStyle(
                                                          fontSize: 15.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 15, left: 70),
                                                    child: Text(
                                                      '50',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:25.0,left:30),
                    child: Row(
                      children: [
                        Container(
                          width: 300,
                          height: 234,
                          // color:Colors.orange,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                             decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color.fromARGB(255, 33, 44, 243),
                                Color.fromARGB(129, 85, 28, 147),
                                Color.fromARGB(255, 15, 80, 133)
                              ],
                            )),
                            child: Column(children: [
                              Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(top:15.0,left:15),
                                  child: Column(children: [
                                    Text('%',style: TextStyle(fontSize: 15,color:Colors.white)),
                                  ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:15.0,left:65),
                                  child: Column(children: [
                                    Text('Cumulative',style: TextStyle(fontSize: 15,color:Colors.white))
                                  ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:15.0,left:50),
                                  child: Column(children: [
                                    Text('Current',style: TextStyle(fontSize: 15,color:Colors.white))
                                  ],),
                                )
                              ],),

                               Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(top:35.0,left:15),
                                  child: Column(children: [
                                    Text('Scrap',style: TextStyle(fontSize: 15,color:Colors.white)),
                                  ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:35.0,left:65),
                                  child: Column(children: [
                                    Text('0.004%',style: TextStyle(fontSize: 15,color:Colors.black))
                                  ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:35.0,left:50),
                                  child: Column(children: [
                                    Text('0.0040%',style: TextStyle(fontSize: 15,color:Colors.black))
                                  ],),
                                )
                              ],),


                               Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(top:30.0,left:15),
                                  child: Column(children: [
                                    Text('Loss',style: TextStyle(fontSize: 15,color:Colors.white)),
                                  ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:30.0,left:65),
                                  child: Column(children: [
                                    Text('0.0401%',style: TextStyle(fontSize: 15,color:Colors.black))
                                  ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:30.0,left:50),
                                  child: Column(children: [
                                    Text('0.0401%',style: TextStyle(fontSize: 15,color:Colors.black))
                                  ],),
                                )
                              ],),
                               Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(top:30.0,left:15),
                                  child: Column(children: [
                                    Text('Idle',style: TextStyle(fontSize: 15,color:Colors.white)),
                                  ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:30.0,left:65),
                                  child: Column(children: [
                                    Text('99.6902%',style: TextStyle(fontSize: 15,color:Colors.black))
                                  ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:30.0,left:50),
                                  child: Column(children: [
                                    Text('99.6902%',style: TextStyle(fontSize: 15,color:Colors.black))
                                  ],),
                                )
                              ],)
                            ],)
                          ),
                        ),
                        
                      ],
                    ),
                  )
                ],
              ),
            ),


                



            
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 270,
                              height: 175,
                              // color:Colors.orange,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5.0, left: 5, right: 5),
                                        child: Container(
                                          width: 300,
                                          height: 50,
                                          // color:Colors.blue,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              gradient: LinearGradient(
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                                colors: [
                                                  Color.fromARGB(210, 134, 99, 204),
                                                  Color.fromARGB(176, 19, 62, 140),
                                                ],
                                              )),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10.0, left: 10),
                                                child: Column(
                                                  children: [
                                                    Icon(
                                                      Icons.arrow_upward,
                                                      color: Colors.black,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Column(
                                                children: [
                                                  Center(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 15.0, left: 50),
                                                      child: Text(
                                                        'To BOQ Update',
                                                        style: TextStyle(
                                                          fontSize: 15.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        top: 15, left: 60),
                                                    child: Text(
                                                      '8',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5.0, left: 5, right: 5),
                                            child: Container(
                                              width: 300,
                                              height: 50,
                                              // color:Colors.blue,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topRight,
                                                    end: Alignment.bottomLeft,
                                                    colors: [
                                                      Color.fromARGB(255, 141, 172, 198),
                                                      Color.fromARGB(129, 16, 153, 194),
                                                    ],
                                                  )),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        top: 10.0, left: 10),
                                                    child: Column(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .check_box_outline_blank,
                                                          color: Colors.black,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Column(
                                                    children: [
                                                      Center(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  top: 15.0,
                                                                  left: 50),
                                                          child: Text(
                                                            'To Issue',
                                                            style: TextStyle(
                                                              fontSize: 15.0,
                                                              fontWeight:
                                                                  FontWeight.bold,
                                                              color: Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets.only(
                                                                top: 15, left: 80),
                                                        child: Text(
                                                          '12',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight.bold),
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5.0, left: 5, right: 5),
                                            child: Container(
                                              width: 300,
                                              height: 50,
                                              // color:Colors.blue,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topRight,
                                                    end: Alignment.bottomLeft,
                                                    colors: [
                                                      Color.fromARGB(255, 240, 197, 5),
                                                      Color.fromARGB(129, 211, 175, 15),
                                                      Color.fromARGB(252, 196, 161, 7),
                                                    ],
                                                  )),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        top: 10.0, left: 10),
                                                    child: Column(
                                                      children: [
                                                        Icon(
                                                          Icons.check,
                                                          color: Colors.black,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Column(
                                                    children: [
                                                      Center(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  top: 15.0,
                                                                  left: 50),
                                                          child: Text(
                                                            'Issued',
                                                            style: TextStyle(
                                                              fontSize: 15.0,
                                                              fontWeight:
                                                                  FontWeight.bold,
                                                              color: Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets.only(
                                                                top: 15, left: 90),
                                                        child: Text(
                                                          '144',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight.bold),
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                 
                                ],
                              ),
                            ) 




                          ],
                        ),
   

 Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 50),
                    child: Column(
                      children: [
                        Container(
                          width: 300,
                          height: 175,
                          // color:Colors.orange,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5.0, left: 5, right: 5),
                                    child: Container(
                                      width: 300,
                                      height: 50,
                                      // color:Colors.blue,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Color.fromARGB(210, 54, 226, 177),
                                              Color.fromARGB(176, 58, 238, 82),
                                            ],
                                          )),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10.0, left: 10),
                                            child: Column(
                                              children: [
                                                Icon(
                                                  Icons.check,
                                                  color: Colors.black,
                                                )
                                              ],
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Center(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 15.0, left: 50),
                                                  child: Text(
                                                    'Utiization',
                                                    style: TextStyle(
                                                      fontSize: 15.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 15, left: 70),
                                                child: Text(
                                                  '188',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5.0, left: 5, right: 5),
                                        child: Container(
                                          width: 300,
                                          height: 50,
                                          // color:Colors.blue,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              gradient: LinearGradient(
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                                colors: [
                                                  Color.fromARGB(255, 6, 51, 87),
                                                  Color.fromARGB(
                                                      129, 6, 139, 180),
                                                ],
                                              )),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10.0, left: 10),
                                                child: Column(
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .check_box_outline_blank,
                                                      color: Colors.black,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Column(
                                                children: [
                                                  Center(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 15.0,
                                                              left: 50),
                                                      child: Text(
                                                        'Return Initiated',
                                                        style: TextStyle(
                                                          fontSize: 15.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 15, left: 80),
                                                    child: Text(
                                                      '40',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5.0, left: 5, right: 5),
                                        child: Container(
                                          width: 300,
                                          height: 50,
                                          // color:Colors.blue,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              gradient: LinearGradient(
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                                colors: [
                                                  Color.fromARGB(255, 255, 59, 150),
                                                  Color.fromARGB(129, 173, 65, 155),
                                                ],
                                              )),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10.0, left: 10),
                                                child: Column(
                                                  children: [
                                                    Icon(
                                                      Icons.check,
                                                      color: Colors.black,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Column(
                                                children: [
                                                  Center(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 15.0,
                                                              left: 50),
                                                      child: Text(
                                                        'Returned',
                                                        style: TextStyle(
                                                          fontSize: 15.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 15, left: 90),
                                                    child: Text(
                                                      '112',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              

                            ],
                          ),
                        )
                      ],
                    ),
                  ),



                   
                      ],
                    ),
                  ),
                  

         Container(
          child: SfCartesianChart(
            // Initialize category axis
            primaryXAxis: CategoryAxis(),

            series: <LineSeries<SalesData, String>>[
              LineSeries<SalesData, String>(
                // Bind data source
                dataSource:  <SalesData>[
                  SalesData('Jan', 35),
                  SalesData('Feb', 28),
                  SalesData('Mar', 34),
                  SalesData('Apr', 32),
                  SalesData('May', 40)
                ],
                xValueMapper: (SalesData sales, _) => sales.year,
                yValueMapper: (SalesData sales, _) => sales.sales
              )
            ]
          )
        )
      
  



          ],
        ),
      ),
    );
  }
}
class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}

