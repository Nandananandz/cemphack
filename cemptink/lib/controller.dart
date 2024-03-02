import 'package:flutter/material.dart';

class certficateController extends StatelessWidget {
certficateController({super.key});
TextEditingController name = TextEditingController();
  TextEditingController event = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:  Column(
          children: [
               TextFormField(
                    controller: name,
                    
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    controller: event,
                    decoration: InputDecoration(labelText: 'Event Name'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter event name';
                      }
                      return null;
                    },
                  ),
          ],
        )  

      
    );
  }
}
 