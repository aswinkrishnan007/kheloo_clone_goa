import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class UserList extends StatelessWidget {
  const UserList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/withdrawal_board.png",
          ),
          fit: BoxFit.fitWidth,
        ),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (MediaQuery.of(context).size.width / 2) / 80,
        ),
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return userCard();
        },
      ),
    );
  }

  Container userCard() {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
      child: Center(
        child: ListTile(
          leading: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: ColorConstants.secondaryYellow,
                width: 4.0,
              ),
            ),
            child: const Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
          contentPadding: EdgeInsets.zero,
          minLeadingWidth: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Pranoy", style: whiteTextStyle12),
              Text("₹", style: yellowTextStyle14),
              Text("12345", style: whiteTextStyle12)
            ],
          ),
          subtitle: const Text(
            "2 seconds ago ",
            style: TextStyle(
              color: ColorConstants.secondaryYellow,
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
