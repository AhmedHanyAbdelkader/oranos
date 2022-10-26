import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oranos/oranobot/presentation/resources/font_manager.dart';





/// 12
TextStyle? getRegularStyle({size,color}){
  return GoogleFonts.poppins(
      fontSize:size,
      fontWeight: FontWeighManager.regular,
    color: color,
  );}

TextStyle? getMediumStyle({size,color}){
  return GoogleFonts.poppins(
    fontSize:size,
    fontWeight: FontWeighManager.medium,
    color: color,
  );}

/// 19
TextStyle? getSemiBoldStyle({size,color}){
  return GoogleFonts.poppins(
    fontSize: size,
    fontWeight: FontWeighManager.semiBold,
    color: color,
  );}

/// 19
TextStyle? getBoldStyle({size,color}){
  return GoogleFonts.poppins(
    fontSize: size,
    fontWeight: FontWeighManager.bold,
    color: color,
  );}







