import 'package:cemptink/Certificate.dart';
import 'package:cemptink/dataScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
    builder: (context,Orientation,DeviceType){
     return GetMaterialApp(
        title: 'certificate generator app',
        theme: ThemeData(
          
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: dataScreen(),
      );
    }
      
    );
  }
}



