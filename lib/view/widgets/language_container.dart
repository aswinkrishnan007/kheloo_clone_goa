import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class LanguageContainer extends StatelessWidget {
  LanguageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          divider(),
          blueContainer(),
          divider(),
        ],
      ),
    );
  }

  Container blueContainer() {
    return Container(
        height: 50,
        alignment: Alignment.center,
        color: ColorConstants.primaryBlue,
        child: Center(
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: languages
                .map((language) => Container(
                      alignment: Alignment.center,
                      height: 50,
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(language, style: yellowTextStyle15),
                    ))
                .toList(),
          ),
        ));
  }

  Container divider() {
    return Container(
        height: 5, decoration: BoxDecoration(gradient: linearGradient));
  }
}
