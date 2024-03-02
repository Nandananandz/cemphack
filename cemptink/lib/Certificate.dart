import 'dart:typed_data';
import 'package:get/get.dart';
import 'package:cemptink/controller.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:widgets_to_image/widgets_to_image.dart';
class certificateScreen extends StatelessWidget {
  
  certificateScreen({super.key});
 certficateController ctctrl = Get.put(certficateController());
 WidgetsToImageController controller = WidgetsToImageController();
 Uint8List? bytes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: 
    WidgetsToImage(
      controller: controller,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 3.h,),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 5.w,
                  height:5.w,
                  child:Image.asset("assets/logo.png")),
              ),
                SizedBox(height: 4.h,),
              Align(
                alignment: Alignment.center,
                child: Text("TINKERHUB",style: TextStyle(fontSize: 11.sp,fontWeight: FontWeight.w600,color: Colors.black),))
            
          
            
            
            ,Align(
              alignment: Alignment.center,
              child: Text(
                                'Certificate of Participation',
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
            ),
                            SizedBox(height: 6.h),
                            Row(
                              children: [
                                Text(
                                  'This is to certify that ',
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              SizedBox(
                                width: 100,
                                child: TextField(
                                  
                                ),
                              ),
                            Text(
                              ctctrl.name.text,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              'has participated in ',
                              style: TextStyle(fontSize: 18.0),
                            ),
                            SizedBox(
                                width: 100,
                                child: TextField(
                                      
                                ),
                              ),
                           
                            Text(
                              ctctrl.event.text,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),),
                               
                            
                              ],
                            ),
                            Row(
                              children: [Text(
                              'as a part of Tinkerhub hackthon 2.0  conducted at ',
                              style: TextStyle(fontSize: 18.0),
                            ), Text(
                              'College of Engineering and mnagement,Punnapra',
                              style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w600),
                            ),],
                            )
                            
                    
                 
                  
          ],
        ),
      ),
    ),
     // final bytes = await controller.capture();
    );
  }
}