import 'package:fitness_ui/custom_widget/text_Style.dart';
import 'package:fitness_ui/utils/colors.dart';
import 'package:flutter/material.dart';

import 'custom_widget/CustomButton.dart';

class Cardcontainer extends StatelessWidget {
  final Color? Backgournd;
  final Widget customdbutton;
  final Widget title;
  final Widget subtitle;

  const Cardcontainer({super.key, this.Backgournd, required this.customdbutton, required this.title, required this.subtitle, });


  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.sizeOf(context);
    return   Container(
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          color:Backgournd?? AppColors.primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(25))

      ),
      width: size.width* .46 ,
      height: size.height *.2,

      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(

            child:customdbutton,
            alignment: Alignment.topRight,
            padding: EdgeInsets.only(top: 10,right: 10),
          ),
          Container(child:title),
          Container(child: subtitle,)


        ],
      ),
    );
  }
}
