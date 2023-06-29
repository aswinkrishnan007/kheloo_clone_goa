import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kheloo_clone_goa/utils/utils.dart';

import '../../constants/constants.dart';
import '../../provider/home_provider.dart';

class GameList extends StatelessWidget {
  const GameList({super.key, required this.provider});
  final HomeProvider provider;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          height: 40,
          child: Row(
            children: [
              Container(
                height: 40,
                width: 10,
                decoration: BoxDecoration(
                    color: ColorConstants.primaryYellow,
                    borderRadius: BorderRadius.circular(10)),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                "Most Popular(15)",
                style: whiteTextStyle16,
              ),
              const Expanded(child: SizedBox()),
              ElevatedButton(
                onPressed: () {
                  provider.toggleShowMore();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorConstants.primaryYellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
                  provider.showMore ? "Hide" : 'Show More',
                  style: whiteTextStyle12,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1),
            itemCount: provider.showMore ? 8 : 4,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          games[index],
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                        width: 2, color: ColorConstants.primaryYellow)),
                margin:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 20,
                      color: ColorConstants.primaryBlue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Min", style: whiteTextStyle12),
                          Text("₹", style: yellowTextStyle14),
                          Text("100", style: whiteTextStyle12),
                          Text(
                            "|",
                            style: yellowTextStyle14,
                          ),
                          Text("Max", style: whiteTextStyle12),
                          Text("₹", style: yellowTextStyle14),
                          Text("100", style: whiteTextStyle12),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ).wrapWithSizedBoxHeight(provider.showMore ? 8 : 4, 2, context),
        ),
        const SizedBox(
          height: 100,
        )
      ],
    );
  }
}
