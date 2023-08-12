import 'package:bmi1/main.dart';
import 'package:flutter/material.dart';
class Result extends StatelessWidget {

  final String bmi;
  final String result;
  final String feedback;

  Result({required this.bmi,required this.feedback,required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
            padding: EdgeInsets.only(top: 25.0),
            child: Center(
              child: Text('Your Result',style: TextStyle(fontSize: 45.0,fontWeight: FontWeight.bold),)),
          )),

          Expanded(
            flex: 7,
            child: Container(
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: activecolor,
                borderRadius: BorderRadius.circular(10.0)
              ),
              
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(result,style: TextStyle(color: const Color(0xFFEB1555),fontSize: 30.0,fontWeight: FontWeight.bold,),), 
                  SizedBox(
                    height: 80,
                  ),                 
                  Text(bmi,style: TextStyle(fontSize: 100.0,fontWeight: FontWeight.bold,),),
                  SizedBox(
                    height: 80,
                  ),
                  Text(feedback,textAlign: TextAlign.center,style: TextStyle(fontSize: 18.0),),
                  
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap:() {
              Navigator.pop(context);
            },
            child: Container(
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 60.0,
              color: const Color(0xFFEB1555),
              child: Center(child: 
              Text('RE-CALCULATE',style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold),)),
              ),
          ),
                    
        ]
      ),
    );
  }
}