import 'package:flutter/material.dart';

class ColorConstants {
  static const Color primaryYellow = Color(0xffF7AD07);
  static const Color secondaryYellow = Color(0xffD57F23);
  static const Color primaryBlue = Color(0xff8400C9);
  static const Color primaryRed = Color.fromARGB(255, 192, 34, 22);
}

const imagePath = "assets/images/";

const String youtubeVideoID = "jA14r2ujQ7s";
const List<String> carouselImages = [
  "${imagePath}banner1.jpg",
  "${imagePath}banner2.png",
  "${imagePath}banner3.jpg",
  "${imagePath}banner4.jpg",
];
const List<String> languages = [
  "English",
  "हिन्दी",
  "ಕನ್ನಡ",
  "తెలుగు",
  "मराठी",
  "..."
];

List<String> games = [
  "${imagePath}game1.png",
  "${imagePath}game2.webp",
  "${imagePath}game3.webp",
  "${imagePath}game4.webp",
  "${imagePath}game1.png",
  "${imagePath}game2.webp",
  "${imagePath}game3.webp",
  "${imagePath}game4.webp"
];

TextStyle yellowTextStyle = const TextStyle(
  color: ColorConstants.primaryYellow,
  fontSize: 10,
  fontWeight: FontWeight.w500,
);
TextStyle yellowTextStyle15 = const TextStyle(
  color: ColorConstants.primaryYellow,
  fontSize: 15,
  fontWeight: FontWeight.w500,
);
TextStyle yellowTextStyle14 = const TextStyle(
  color: ColorConstants.secondaryYellow,
  fontSize: 14,
  fontWeight: FontWeight.w500,
);
TextStyle whiteTextStyle = const TextStyle(
  color: Colors.white,
  fontSize: 10,
  fontWeight: FontWeight.w500,
);
TextStyle whiteTextStyle12 = const TextStyle(
  color: Colors.white,
  fontSize: 12,
  fontWeight: FontWeight.w500,
);
TextStyle whiteTextStyle16 = const TextStyle(
  color: Colors.white,
  fontSize: 16,
  fontWeight: FontWeight.w500,
);
LinearGradient linearGradient = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.topRight,
  colors: [
    ColorConstants.secondaryYellow,
    Colors.white,
    ColorConstants.primaryYellow,
  ],
);
LinearGradient loginLinearGradient = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.topRight,
  colors: [
    ColorConstants.primaryYellow,
    ColorConstants.secondaryYellow,
  ],
);
