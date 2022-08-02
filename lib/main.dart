import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tmudirect/dashboard/dashboard.dart';
import 'package:tmudirect/login/login.dart';
import 'package:tmudirect/registration/register.dart';

void main() async{
  runApp(Tmudirect());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
}

class Tmudirect extends StatelessWidget {
  const Tmudirect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff191B1F),
        accentColor: Color(0xffF89009),
        unselectedWidgetColor: Colors.white
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), (){

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));

      // StreamBuilder(
      //   stream: FirebaseAuth.instance.authStateChanges(),
      //   builder: (context, snapshot){
      //     if(snapshot.connectionState == ConnectionState.active){
      //       if(snapshot.hasData){
      //         Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
      //       }else if(snapshot.hasError){
      //         return Center(
      //           child: Text('${snapshot.error}'),
      //         );
      //       }
      //     }
      //
      //     if(snapshot.connectionState == ConnectionState.waiting){
      //       return Center(
      //         child: CircularProgressIndicator(
      //           color: Theme.of(context).accentColor,
      //         ),
      //       );
      //     }
      //
      //     Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
      //     return Login();
      //   },
      //
      // );
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Image(
          image: AssetImage('asset/image/logo.png'),
        ),
      ),
    );
  }
}

