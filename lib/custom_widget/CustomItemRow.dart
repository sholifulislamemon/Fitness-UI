import 'package:fitness_ui/custom_widget/text_Style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class Customitemrow extends StatelessWidget {
  final String title;
  final String subtitle;
  const Customitemrow({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
              color: AppColors.primaryColor,
              shape: BoxShape.circle
          ),
        ),
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Heddingthree(text: title),
            HeddingFour(text:subtitle,TextColor: Colors.white.withOpacity(.6))
          ],
        )
      ],
    );
  }
}
