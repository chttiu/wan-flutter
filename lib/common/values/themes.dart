import 'package:flutter/material.dart';
import 'package:wan_flutter/common/values/color.dart';

// ThemeData(
//       fontFamily: 'ResourceHanRoundedCN',
//       // colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFefc7bc),primary: const Color(0xFFc8c3b7)),
//       useMaterial3: true,
// ),

final leafTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'ResourceHanRoundedCN',
    primaryColor: WanColor.errorRed,
    colorScheme: ColorScheme.fromSeed(seedColor: WanColor.errorRed));

final seedTheme = ThemeData(
    fontFamily: 'ResourceHanRoundedCN',
    brightness: Brightness.light,
    primaryColor: WanColor.catechinaGreen,
    colorScheme: ColorScheme.fromSeed(seedColor: WanColor.catechinaGreen));
