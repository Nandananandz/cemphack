import 'package:cemptink/Certificate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class dataScreen extends StatelessWidget {
   dataScreen({super.key});
 TextEditingController name = TextEditingController();
 TextEditingController eventname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
        SizedBox(height: 10.h),
         Container(
          margin: EdgeInsets.only(left: 3.w),
           child: TextField(
             controller: name,
             maxLines: 1,
             textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                     border: InputBorder.none,
             isCollapsed: true,
               isDense: true,
               
               hintText: "Name"
                   
             ),
           ),
         ),
             SizedBox(height: 2.h,),

                                     Container(
                                      margin: EdgeInsets.only(left: 3.w),
                                       child: TextField(
                                       controller:  eventname,  
                                         maxLines: 1,
                                         textAlignVertical: TextAlignVertical.center,
                                                decoration: InputDecoration(
                                                 border: InputBorder.none,
                                         isCollapsed: true,
                                           isDense: false,
                                           hintText: "Event Name",
                                               
                                         ),
                                       ),
                                     ),
                                     SizedBox(height: 4.h,),
                                     InkWell(
                                      onTap: (){
                                     
                                        Get.to(()=> certificateScreen(eventName: eventname.text , name: name.text));
                                      },
                                       child: Container(
                                        width: 70.w,
                                        height: 6.h,
                                        color: Colors.blue,
                                        alignment: Alignment.center,
                                        child: Text("Submit",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                                       ),
                                     )

        ],
      ),
    );
  }
}