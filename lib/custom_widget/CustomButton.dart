import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  final Color? backgroundColor;
  final double? height;
  final double? weight;
  final IconData? icon;
  final Color? IconColor;
  final double? iconSize;
  Custombutton(
      {super.key,
        this.backgroundColor,
        this.icon,
        this.IconColor,
        this.height,
        this.weight,
        this.iconSize});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      height: height ?? 100,
      width: weight ?? 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor ?? Colors.white.withOpacity(0.1),
      ),
      child: Center(
        child: IconButton(
          onPressed: () {},
          icon: Icon( icon?? Icons.question_mark,color: IconColor??Colors.white,size:iconSize??40, )
        ),
      ),
    );
  }
}
