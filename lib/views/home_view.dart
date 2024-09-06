import 'package:basic_contant_form/views/display_submitted_view.dart';
import 'package:basic_contant_form/widgets/custom_button.dart';
import 'package:basic_contant_form/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController name=TextEditingController();
    TextEditingController email=TextEditingController();
    TextEditingController message=TextEditingController();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Personal Information'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Name',style: TextStyle(fontSize: 18,color: Colors.grey),),
                const SizedBox(height: 10,),
                CustomTextField(
                  controller: name,
                  obscureText: false, 
                ),
                const SizedBox(height: 24,),
      
                const Text('Email',style: TextStyle(fontSize: 18,color: Colors.grey),),
                const SizedBox(height: 10,),
                CustomTextField(
                  controller: email,
                  obscureText: false, 
                ),
                const SizedBox(height: 24,),
      
                const Text('Message',style: TextStyle(fontSize: 18,color: Colors.grey),),
                const SizedBox(height: 10,),
                CustomTextField(
                  controller: message,
                  obscureText: false, 
                ),
      
      
                const SizedBox(height: 80,),
                CustomButton(
                  titleBurron: 'Add', 
                  colorContainer: Colors.blue, 
                  colortitleButton: Colors.white, 
                  colorborderSide: Colors.grey, 
                  onTap: () {
                    print(name.text);
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  DisplaySubmittedView(name: name.text, email: email.text,message: message.text,),));
                  },
                ),
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}