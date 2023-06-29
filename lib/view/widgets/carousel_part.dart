import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../provider/home_provider.dart';

class CarouselPart extends StatelessWidget {
  const CarouselPart({super.key, required this.provider});
  final HomeProvider provider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        carouselSlider(context, provider),
        const SizedBox(height: 10),
        carouselIndicator(context, provider),
      ],
    );
  }

  DotsIndicator carouselIndicator(BuildContext context, HomeProvider provider) {
    return DotsIndicator(
      position: provider.currentPage,
      dotsCount: carouselImages.length,
      decorator: DotsDecorator(
        size: const Size(20, 3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
        ),
        activeColor: ColorConstants.secondaryYellow,
        activeSize: const Size(20, 4),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
        ),
        spacing: const EdgeInsets.symmetric(vertical: 20, horizontal: 3),
        color: Colors.grey,
      ),
    );
  }

  CarouselSlider carouselSlider(BuildContext context, HomeProvider provider) {
    return CarouselSlider(
      items: carouselImages
          .map((image) => Image.asset(
                image,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ))
          .toList(),
      options: CarouselOptions(
        height: 200,
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 1,
        onPageChanged: (index, reason) {
          provider.updateCurrentPage(index);
        },
      ),
    );
  }
}
