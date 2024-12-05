import 'package:flutter/material.dart';

class Customitem extends StatelessWidget {
  final IconData icon;
  final int numb;
  final String string;
  const Customitem({super.key, required this.icon, required this.numb, required this.string});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,size: 15,),
        Text( numb.toString(),style: TextStyle(fontSize: 18),),
        Text( string,style: TextStyle(fontSize: 18),)

      ],
    );
  }
}
