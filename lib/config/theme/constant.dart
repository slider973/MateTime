import 'package:flutter/material.dart';

class Constant {
 static BoxDecoration buildBackgroundGradient() {
    return const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xFFE2FBF8),
          Color(0xFFD8FFFA),
          Color(0xFFD8CAFF),
          Color(0xFFBC4AFE),
        ],
        stops: [0.0, 0.17, 0.52, 1.0],
      ),
    );
  }
}