import 'package:fitness_ui/custom_widget/CustomButton.dart';
import 'package:fitness_ui/custom_widget/CustomChartTrecker.dart';
import 'package:fitness_ui/custom_widget/CustomTimeTricker.dart';
import 'package:fitness_ui/custom_widget/text_Style.dart';
import 'package:fitness_ui/utils/colors.dart';
import 'package:fitness_ui/custom_widget/CustomItemRow.dart';
import 'package:flutter/material.dart';

class Fitnesstrecker extends StatelessWidget {
  const Fitnesstrecker({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          toolbarHeight: 90,
          backgroundColor: Colors.transparent,
          leadingWidth: 80,
          leading: Custombutton(
            icon: Icons.arrow_back,
          ),
          actions: [
            Custombutton(
              icon: Icons.notifications,
            )
          ],
        ),
        body: Padding(
          padding:const EdgeInsets.all(10),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Heddingtwo(text: "Make Your"),
              Heddingtwo(text: "Body Perfect",TextColor: AppColors.primaryColor),
              SizedBox( height: size.height *0.01,),

              Container(
                  padding:const EdgeInsets.all(25),
                  height: size.height * .20 ,
                  width:  size.width * .9,

                child:const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Customitemrow(title: "Celories",subtitle: "1320 Kcal",),
                        Customitemrow(title: "Protien",subtitle: "30 Gram",)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Customitemrow(title: "Sleep",subtitle: "3 Hour's",),
                        Customitemrow(title: "Weight",subtitle: "57 Kg",)
                      ],
                    )
                  ],
                )
              ),
              Container(
                padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(25)
                  ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Custombutton(icon: Icons.heart_broken,backgroundColor: Colors.cyan,),
                      title: Heddingthree(text:"851 M-S" ),
                      subtitle: HeddingFour(text: " R-R intervel"),

                    ),
                    SizedBox(height: size.height * .03,),
                    Row(
                      children: [
                        Customtimetricker(text: "850 MS",),
                        Customtimetricker(text: "830 MS",istrue: true,),
                        Customtimetricker(text: "810 MS"),

                      ],
                    )
                  ],
                ),
              ),
              SizedBox( height: size.height *0.02,),
              Container(
                width: size.width ,
                decoration: BoxDecoration(
                  // color: AppColors.primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(45)),
                  border: Border.all( width: 2,
                  color: AppColors.primaryColor)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Heddingthree(text: "Blood Pressure"),
                          Row(
                             children: [
                               HeddingFour(text: "Weekly"),
                               SizedBox(width: 10,),
                               Custombutton(

                                 weight: 40,
                                 icon: Icons.arrow_downward,
                                 iconSize: 25,
                               )
                             ],
                          )
                        ],
                      ),
                    ),
                    Customcharttrecker()

                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );;
  }
}
