import 'package:chtera/page/putri_dasboard.dart';
import 'package:flutter/material.dart';

import 'page/eka_splashscreen.dart';

void main (){
  runApp(Chattera());
}
 class Chattera extends StatefulWidget {
   const Chattera({super.key});

   @override
   State<Chattera> createState() => _ChatteraState();
 }

 class _ChatteraState extends State<Chattera> {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(debugShowCheckedModeBanner: false, home: EkaSplashScreen(),);
   }
 }
