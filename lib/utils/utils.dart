import 'package:flutter/material.dart';

extension WrapWithSizedBox on Widget {
  Widget wrapWithSizedBoxHeight(
      int itemCount, int crossAxisCount, BuildContext context) {
    return SizedBox(
      height: (itemCount / crossAxisCount).ceil() *
          (MediaQuery.of(context).size.width / crossAxisCount),
      child: this,
    );
  }
}
