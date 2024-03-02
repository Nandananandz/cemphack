
import 'dart:typed_data';
import 'package:file_saver/file_saver.dart';
import 'package:get/get.dart';
import 'package:cemptink/controller.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:widgets_to_image/widgets_to_image.dart';
class certificateScreen extends StatefulWidget {
  String name ; String eventName ;
  certificateScreen({super.key, required this.eventName, required this.name});

  @override
  State<certificateScreen> createState() => _certificateScreenState();
}

class _certificateScreenState extends State<certificateScreen> {
 certficateController ctctrl = Get.put(certficateController());

 WidgetsToImageController controller = WidgetsToImageController();

 Uint8List? bytes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: 
    Column(
      children: [
        SizedBox(height: 4.h,),
        WidgetsToImage(
          controller: controller,
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 90.w,
              height: 80.w,
              color:Colors.pinkAccent.withOpacity(0.2),
              padding: EdgeInsets.all(3.w),
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
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                  ),
                                  SizedBox(height: 4.h),
        
                                  RichText(
                                    textAlign: TextAlign.center,
                                            text: TextSpan(
                                          //style: DefaultTextStyle.of(context).style,
                                          children: [
                                            
                                             TextSpan(
                                              text: 'This is to certify that ',
                                              style:TextStyle(fontSize:10.sp,fontWeight: FontWeight.w400,color: Colors.black),
                                            ),
                                             TextSpan(
                                              text: widget.name,
                                              style:TextStyle(fontSize:10.sp,fontWeight: FontWeight.w600,color: Colors.black),
                                            ),
                                             TextSpan(
                                              text: ' has participated in ',
                                              style:TextStyle(fontSize:10.sp,fontWeight: FontWeight.w400,color: Colors.black),
                                            ),
                                             TextSpan(
                                              text: widget.eventName,
                                              style:TextStyle(fontSize:10.sp,fontWeight: FontWeight.w600,color: Colors.black),
                                            ),
                                             TextSpan(
                                              text: ' as a part of Tinkerhub hackthon 2.0 conducted at ',
                                              style:TextStyle(fontSize:10.sp,fontWeight: FontWeight.w400,color: Colors.black),
                                            ),
                                            TextSpan(
                                              text: ' College of Engineering and management, Punnapra',
                                              style:TextStyle(fontSize:10.sp,fontWeight: FontWeight.w600,color: Colors.black,fontStyle: FontStyle.italic),
                                            ),
                                          ],
                                            ),
                                          )
                                 
                           
                       
                        
                ],
              ),
            ),
          ),
        ),
      ],
    ),
    floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.image_outlined),
          onPressed: () async {
            final bytes = await controller.capture();
         FileSaver.instance.saveAs(bytes: bytes, name: 'certificate', mimeType: MimeType.png, ext: '123', );
            setState(() {
              this.bytes = bytes;
             

           
            });
          },
        ),
        
    //  final bytes = await controller.capture();
     
    );
    
  }
}