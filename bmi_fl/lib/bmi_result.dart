import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BmiResult extends StatelessWidget {
  final double res;
  final bool iisMale;
  final int aage;
  const BmiResult({super.key,required this.res,required this.iisMale,required this.aage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#070D18'),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        backgroundColor: HexColor('#070D18'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'BMI Result',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Gender : ${this.iisMale ? 'Male' : 'Female'}',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Result : ${this.res.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),
            ),
            Text(
              'Age : ${this.aage.round()}',
              style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
            ),

            Text(
              'Recommendation : ${this.res < 18.5 ? "Underweight"
                  : this.res < 24.9 ? "Normal" : this.res < 29.9 ? "Overweight" : "Obese"}',
              style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),

            ),
          ],
        ),
      ),
    );
  }
}
