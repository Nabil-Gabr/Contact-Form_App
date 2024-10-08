import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String titleBurron;
  final Color colorContainer;
  final Color colortitleButton;
  final Color colorborderSide;
  final VoidCallback? onTap;
  const CustomButton(
      {super.key,
      required this.titleBurron,
      required this.colorContainer,
      required this.colortitleButton,
      required this.colorborderSide,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 58,
        width: double.infinity,
        decoration: BoxDecoration(
            color: colorContainer,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1.2, color: colorborderSide),
           ),
        child: Text(
          titleBurron,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: colortitleButton),
        ),
      ),
    );
  }
}