import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Column(
        children: [
          ShaderMask(
            blendMode: BlendMode.srcATop,
            shaderCallback: (Rect bounds) {
              return const LinearGradient(
                colors: [
                  ColorConstants.secondaryYellow,
                  Colors.white,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ).createShader(bounds);
            },
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                letterSpacing: 0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Divider(
            indent: MediaQuery.of(context).size.width / 3,
            endIndent: MediaQuery.of(context).size.width / 3,
            color: ColorConstants.primaryYellow,
            thickness: 2,
          )
        ],
      ),
    );
  }
}
