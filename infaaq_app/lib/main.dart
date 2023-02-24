import 'package:flutter/material.dart';
import 'login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

Future main()async{
  WidgetsFlutterBinding.ensureInitialized();
  try{
  await Firebase.initializeApp(
      options: const FirebaseOptions(
      apiKey: "AIzaSyCZ_X0Q8F8Yjiza8gzno13V1rLxQ2aofGs",
      appId: "1:312494685862:android:9373973fd5fe19208cfe67",
      messagingSenderId: "XXX",
      projectId: "infaaq-donations-app",
    ),
  );
  } catch(e){
    return;
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Infaaq - Let\'s Grow Together',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  AnimatedSplashScreen(splash: Image.asset('assets/images/infaaq_logo.png', width: 300, height: 300,), nextScreen: LoginPage(), duration: 800, splashIconSize: 200,),
    );
  }
}


