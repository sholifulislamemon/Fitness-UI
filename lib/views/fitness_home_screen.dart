import 'package:fitness_ui/CardContainer.dart';
import 'package:fitness_ui/custom_widget/CustomButton.dart';
import 'package:fitness_ui/custom_widget/customItem.dart';
import 'package:fitness_ui/custom_widget/text_Style.dart';
import 'package:fitness_ui/utils/colors.dart';
import 'package:fitness_ui/views/FitnessTrecker.dart';
import 'package:flutter/material.dart';

class FitnessHomeScreen extends StatelessWidget {
  const FitnessHomeScreen({super.key});

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
            icon: Icons.menu,
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Heddingtwo(text: "Make Your"),
              Heddingtwo(text: "Body Perfect",TextColor: AppColors.primaryColor),

              Stack(
                alignment: Alignment.centerRight,
                  clipBehavior: Clip.none,
                  children: [
              Container(
              padding:const EdgeInsets.all(25),
              height: size.height * .25 ,
              width:  size.width,
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(25)
              )
              ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Heddingthree(text: "Full Body \nExercise X3",TextColor: Colors.black),
                          const SizedBox(height: 10,),
                          const Customitem(icon: Icons.local_fire_department_outlined,numb: 1230,string: " kCal ",),
                          const SizedBox(height: 10,),
                          const Customitem(icon: Icons.watch_later_outlined,numb: 1230,string: " min ",),
                          const SizedBox(height: 10,),
                          ElevatedButton(onPressed: (){

                            Navigator.push(context, MaterialPageRoute(builder: (context) => Fitnesstrecker(),));

                          },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.cyan,
                                fixedSize: const Size(170, 50)
                              ),
                              child: const Text( " Start now",style: TextStyle(color: Colors.white,fontSize: 20,),))
                        ],
                      ),
                    ),
                    Positioned(

                      right:8,
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          shape: BoxShape.circle
                        ),
                      ),
                    ),
                    Positioned(
                      top: -35,
                      right:-10,
                        child: Image.asset("assets/images/body.png",height: 300,width: 250,))
                  ],

              ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Container(
                //   padding: EdgeInsets.only(left: 10),
                //   decoration: BoxDecoration(
                //       color: AppColors.primaryColor,
                //       borderRadius: BorderRadius.all(Radius.circular(25))
                //
                //   ),
                //   width: 200,
                //   height:200,
                //
                //   child: Column(
                //
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Container(
                //
                //         child:   Custombutton(
                //
                //           icon: Icons.directions_run,
                //           backgroundColor:Colors.cyan,
                //           height: 60,
                //         ),
                //         alignment: Alignment.topRight,
                //         padding: EdgeInsets.only(top: 10,right: 10),
                //       ),
                //       HeddingFour(text: " Runing \n Distence",TextColor: Colors.black),
                //       Heddingtwo(text: "1.8 K.M",TextColor: Colors.black)
                //
                //     ],
                //   ),
                // ),
                // Container(
                //   padding: EdgeInsets.only(left: 10),
                //   decoration: BoxDecoration(
                //       color: AppColors.primaryColor,
                //       borderRadius: BorderRadius.all(Radius.circular(25))
                //
                //   ),
                //   width: 200,
                //   height:200,
                //
                //   child: Column(
                //
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Container(
                //
                //         child:   Custombutton(
                //
                //           icon: Icons.directions_run,
                //           backgroundColor:Colors.cyan,
                //           height: 60,
                //         ),
                //         alignment: Alignment.topRight,
                //         padding: EdgeInsets.only(top: 10,right: 10),
                //       ),
                //       HeddingFour(text: " Runing \n Distence",TextColor: Colors.black),
                //       Heddingtwo(text: "1.8 K.M",TextColor: Colors.black)
                //
                //     ],
                //   ),
                // )
                Cardcontainer(
                  customdbutton: Custombutton(
                  icon: Icons.import_contacts_outlined,height: 60, backgroundColor: Colors.cyan,
                ),
                  title: HeddingFour(text:"Running \nDistence",TextColor: Colors.black ),
                  subtitle: Heddingtwo(text: "1.8 KM",TextColor: Colors.black),
            ),
                Cardcontainer(
                    Backgournd: Colors.grey.withOpacity(.6),
                    customdbutton: Custombutton(
                  icon: Icons.bike_scooter_rounded,height: 60,backgroundColor: Colors.black.withOpacity(0.2),
                ), title: HeddingFour(text: "Total\nCyclining"), subtitle: Heddingtwo(text: "7.3 KM")),
              ],
            ),

              Container(
                decoration: const BoxDecoration(
                  color:AppColors.primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: ListTile(
                    contentPadding: const EdgeInsets.only(left: 20),
                    title: Heddingthree(text: " Appointed",TextColor: Colors.black),
                    subtitle: HeddingFour(text: "For a exercise practice",TextColor: Colors.black),
                    trailing: Custombutton(
                      backgroundColor: Colors.cyan,
                      icon: Icons.call,
                      weight: 90,

                    ),

                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
