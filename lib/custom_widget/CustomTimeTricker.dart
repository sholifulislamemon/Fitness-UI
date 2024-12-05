import 'package:fitness_ui/custom_widget/text_Style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customtimetricker extends StatelessWidget {
   final bool? istrue;
   final String text;
  const Customtimetricker({super.key, this.istrue, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Container(
              height: 10,
              decoration: BoxDecoration(
                  color: istrue== true  ? Colors.black: Colors.black.withOpacity(.5),
                  borderRadius: BorderRadius.circular(40)),
            ),
            Heddingthree(text: text,TextColor: istrue == true ? Colors.black: Colors.black.withOpacity(.50))
          ],
        ),
      ),
    );
  }
}
