import 'package:flutter/material.dart';

class DisplaySubmittedView extends StatelessWidget {
  const DisplaySubmittedView({super.key, required this.name, required this.email, required this.message});
  final String name;
  final String email;
  final String message;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text('Name : '),
                  const SizedBox(width: 8,),
                  Text(name,style: const TextStyle(color: Colors.grey),),
                ],
              ),
              const SizedBox(height: 20,),

              Row(
                children: [
                  const Text('Email : '),
                  const SizedBox(width: 8,),
                  Text(email,style: const TextStyle(color: Colors.grey),),
                ],
              ),
              const SizedBox(height: 20,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Message : '),
                  const SizedBox(height: 8,),
                  Text(message,style: const TextStyle(color: Colors.grey),),
                ],
              ),
            ],
                  ),
          ),
        ),
      ),
    );
  }
}