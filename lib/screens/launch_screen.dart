import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, '/app_screen');
    });
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Colors.blue.shade200,
              Colors.pink.shade200
            ]
          )
        ),
        child:  Text('مسبحة الاذكار',style: GoogleFonts.arefRuqaa(
          color: Colors.black,
          fontSize: 45,
          fontWeight: FontWeight.bold
        ),),
      ),
    );

  }
}
