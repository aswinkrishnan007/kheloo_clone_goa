import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class LuckyPot extends StatelessWidget {
  const LuckyPot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      width: MediaQuery.of(context).size.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 230,
            width: 300,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                "assets/images/jackpot.png",
              ),
              fit: BoxFit.fitWidth,
            )),
            alignment: Alignment.center,
            child: const Padding(
              padding: EdgeInsets.only(left: 36, top: 20),
              child: Text(
                ("9876547"),
                style: TextStyle(
                  color: ColorConstants.primaryRed,
                  fontSize: 36,
                  letterSpacing: 11,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
