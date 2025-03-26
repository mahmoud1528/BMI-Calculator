import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'bmi_result.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

bool isMale = true;
double height = 120.0;
int weight = 60;
int age = 28;

class _BmiScreenState extends State<BmiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#070D18'),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        backgroundColor: HexColor('#070D18'),
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: SizedBox(
            height: 730.0,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color:isMale ? Colors.blue: HexColor('#0E1120'),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.male, color: Colors.white, size: 100),
                                Text(
                                  'Male',
                                  style: TextStyle(color: Colors.white, fontSize: 30),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: !isMale ? Colors.pink: HexColor('#0E1120'),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.female, color: Colors.white, size: 100),
                                Text(
                                  'Female',
                                  style: TextStyle(color: Colors.white, fontSize: 30),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: HexColor('#0E1120'),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Height',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              '${height.round()}',
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 40),
                            ),
                            Text(
                              'cm',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                        Slider(
                          value: height,
                          min: 0.0,
                          max: 220.0,
                          onChanged: (value){
                            setState(() {
                              height = value;
                            });
                          },
                          thumbColor: Colors.blue,
                          activeColor: Colors.white,
                          inactiveColor: Colors.grey,

                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: HexColor('#0E1120'),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Weight',
                                style: TextStyle(color: Colors.white, fontSize: 30),
                              ),
                              Text(
                                '${weight}',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 50),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: HexColor('#26262F'),
                                    radius: 25,
                                    child: IconButton(onPressed: (){
                                      setState(() {
                                        weight--;
                                        if(weight < 0)
                                          weight = 0;
                                      });
                                    },
                                      icon: Icon(Icons.remove,color: Colors.white,),
                                    ),
                                  ),

                                  SizedBox(width: 20),

                                  CircleAvatar(
                                    backgroundColor: HexColor('#26262F'),
                                    radius: 25,
                                    child: IconButton(onPressed: (){
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                      color: HexColor('#26262F'),
                                      icon: Icon(Icons.add,color: Colors.white,),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: HexColor('#0E1120'),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Age',
                                style: TextStyle(color: Colors.white, fontSize: 30),
                              ),
                              Text(
                                '${age}',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 50),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: HexColor('#26262F'),
                                    radius: 25,
                                    child: IconButton(onPressed: (){
                                      setState(() {
                                        age--;
                                      });
                                    },
                                      color: HexColor('#26262F'),
                                      icon: Icon(Icons.remove,color: Colors.white,),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  CircleAvatar(
                                    backgroundColor: HexColor('#26262F'),
                                    radius: 25,
                                    child: IconButton(onPressed: (){
                                      setState(() {
                                        age++;
                                      });
                                    },
                                      color: HexColor('#26262F'),
                                      icon: Icon(Icons.add,color: Colors.white,),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      var result = weight / pow(height / 100 ,2);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BmiResult(
                        res: result,
                        iisMale: isMale,
                        aage: age,
                      )));
                    },
                    child: Text(
                      'Calculate',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
