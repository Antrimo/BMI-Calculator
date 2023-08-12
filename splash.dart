import 'package:bmi1/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Splash extends StatefulWidget {

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> 
  with SingleTickerProviderStateMixin
{
  @override
  void initState() {
 
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    
    Future.delayed(const Duration(seconds: 4),(){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => InputPage(),
      ));
    }
    );
    
  }
  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xFF1D1E33),Color(0xFFEB1555)],
          begin: Alignment.bottomCenter,
          end: Alignment.topLeft,
          ),
        ),
        child: Image.asset('images/bmi1.png',
        scale: 4,)
      ),
    );
  }
}