import 'package:flutter/material.dart';


// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  TextEditingController controller;
  String? labelText;
  TextInputType? inputType;
  final bool obscureText;


   CustomTextField({
    super.key , 
    this.labelText , 
    this.inputType, 
    required this.obscureText,
    required this.controller,
  });


  @override
  Widget build(BuildContext context) {
    return TextFormField( 
              obscureText: obscureText,
              keyboardType: inputType,
              // validator: (data) {
              //   if (data!.isEmpty) {
              //     return 'field is required';
              //   }
              // },
              controller: controller,
              decoration: InputDecoration(
                // fillColor: Colors.amber,
                // filled: false,
                labelText: labelText,
                labelStyle: const TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18) ,
        
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:  const BorderSide(color: Colors.grey,),
                ),
                
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:  const BorderSide(color:  Colors.blue,width: 1.4),
                )
              ),
            );
  }
}