import 'package:flutter/material.dart';
import '../utils/colors.dart';
Widget Heddingtwo (
{
  required String text,
  Color? TextColor,
  FontWeight? fontWeight

}
    ){
  return Text(
    text,
    style: TextStyle(
        color: TextColor?? AppColors.white,
        fontWeight: fontWeight?? FontWeight.w600,
        fontSize: 35),
  );

}
Widget Heddingthree (
    {
      required String text,
      Color? TextColor,
      FontWeight? fontWeight

    }
    ){
  return Text(
    text,
    style: TextStyle(
        color: TextColor?? AppColors.white,
        fontWeight: fontWeight?? FontWeight.w600,
        fontSize: 28),
  );

}
Widget HeddingFour (
    {
      required String text,
      Color? TextColor,
      FontWeight? fontWeight

    }
    ){
  return Text(
    text,
    style: TextStyle(
        color: TextColor?? AppColors.white,
        fontWeight: fontWeight?? FontWeight.w600,
        fontSize: 20),
  );

}

