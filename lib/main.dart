
import 'result.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi1/calculation.dart';
import 'package:bmi1/splash.dart';
const activecolor = Color(0xFF1D1E33);
const inactivecolor = Color(0xFF111328);

int height = 180;
int weight = 60;  
int age = 25;
  



void main() => runApp( BMICalculator());

class BMICalculator extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
  
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme:  AppBarTheme(
          backgroundColor: Color(0xff0a0e21),
        ),
        scaffoldBackgroundColor: const Color(0xff0a0e21),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red),
      ),
      home: Splash(),
    );
  }
}

class InputPage extends StatefulWidget {


  @override
  _InputPageState createState() => _InputPageState();
}


class _InputPageState extends State<InputPage> {
  Color male = inactivecolor;
  Color female = inactivecolor;
    
    void update(int gender) {
    {
    if(gender == 1){
      if(male == inactivecolor){
        male = activecolor;
      }
      else{
        male = inactivecolor;
      }
    }
    if(gender == 2){
      if(female == inactivecolor){
        female = activecolor;
      }
      else{
        female = inactivecolor;
      }
    }
  }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
        child: Text('BMI Calculator'),
      )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: GestureDetector(
                onTap: () {
                  setState(() {
                    update(1);
                  });
                },
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: male,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        FontAwesomeIcons.male,
                        size: 100.0,
                        color: Color(0xFF8D8E98),
                      ),
                      SizedBox(
                        height: 13.0,
                      ),
                      Text('MALE',style: TextStyle(fontSize: 24.0,
                      color: Color(0xFF8D8E98),
                      )),
                    ],
                  ),
                ),
              )),
              Expanded(child: GestureDetector(
                onTap: () {
                  setState(() {
                    update(2);
                  });
                },
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: female,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        FontAwesomeIcons.female,
                        size: 100.0,
                        color: Color(0xFF8D8E98),
                      ),
                      SizedBox(
                        height: 13.0,
                      ),
                      Text('FEMALE',style: TextStyle(fontSize: 24.0,
                      color: Color(0xFF8D8E98),
                      )),
                    ],
                  ),
                ),
              )), 
              ],
          )),
          Expanded(child: Container(
            padding: EdgeInsets.only(top: 10.0),
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: activecolor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('HEIGHT',
                    style: TextStyle(fontSize: 24.0,
                    color: Color(0xFF8D8E98),
                    )),
                    SizedBox(
              
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        SizedBox(
                          width: 30.0,
                        ),
                        Text(
                          height.toString(),
                        style: const TextStyle(fontSize: 50.0,
                        fontWeight: FontWeight.w900,
                        )),
                        const Text('cm',style: TextStyle(fontSize: 24.0,
                        fontWeight: FontWeight.w400,
                        )),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 14.0),
                      overlayShape: const RoundSliderOverlayShape(overlayRadius: 40.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 250.0,
                        activeColor: const Color(0xFFEB1555),
                        inactiveColor: Colors.grey,
                        onChanged: (double slider_value) {
                          setState(() {
                            height = slider_value.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              )),
          Expanded(child: Row(
            children: [
              Expanded(child: Container(
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: const Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('WEIGHT'
                    ,style: TextStyle(fontSize: 24.0,
                    color: Color(0xFF8D8E98),
                    )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        SizedBox(
                          width: 30.0,
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(fontSize: 50.0,
                            fontWeight: FontWeight.w900,
                        )),
                        Text('kg',style: TextStyle(fontSize: 24.0,
                        fontWeight: FontWeight.w400,
                        )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          heroTag: "btn1",
                          child: 
                          Icon(FontAwesomeIcons.minus),
                          backgroundColor: Color(0xFF4D4F5E),
                          onPressed:() {
                            setState(() {
                              weight =weight-1;
                            });
                          },
                        ),
                        SizedBox(
                          width: 17.0,
                        ),
                        FloatingActionButton(
                          heroTag: "btn2",
                          child: 
                          Icon(FontAwesomeIcons.plus),
                          backgroundColor: Color(0xFF4D4F5E),
                          onPressed:() {
                            setState(() {
                              weight = weight+1;
                            });
                          },
                        ),
                      ],
                    ),

                  ],
                ),  
              )),
              Expanded(child: Container(
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: const Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('AGE',style: TextStyle(fontSize: 24.0,
                    color: Color(0xFF8D8E98),
                    )),
                    Text(
                      age.toString(),
                      style: TextStyle(fontSize: 50.0,
                        fontWeight: FontWeight.w900,
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          heroTag: "btn3",
                          child: 
                          Icon(FontAwesomeIcons.minus),
                          backgroundColor: Color(0xFF4D4F5E),
                          onPressed:() {
                            setState(() {
                              age =age-1;
                            });
                          },
                        ),
                        SizedBox(
                          width: 17.0,
                        ),
                        FloatingActionButton(
                          heroTag: "btn4",
                          child: 
                          Icon(FontAwesomeIcons.plus),
                          backgroundColor: Color(0xFF4D4F5E),
                          onPressed:() {
                            setState(() {
                              age = age+1;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              )),
            ],
          )),
          GestureDetector(
            onTap:() {
              height.toDouble();
              CalculatorBrain calculateBMI = CalculatorBrain(height: height.toDouble(), weight: weight.toDouble());
              Navigator.push(context, 
                MaterialPageRoute(builder: (context) =>  Result(
                  bmi: calculateBMI.calculateBMI(),
                  result: calculateBMI.getResult(),
                  feedback: calculateBMI.getInterpretation(),

                
                )));
            },
            child: Container(
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 60.0,
              color: const Color(0xFFEB1555),
              child: Center(child: 
              Text('CALCULATE',style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold),)),
              ),
          ),
        ],
      ),
    );
  }
  

}