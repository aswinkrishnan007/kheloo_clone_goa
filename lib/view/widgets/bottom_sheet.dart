import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class CustomeBottomSheet extends StatelessWidget {
  const CustomeBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              height: 80,
              child: CustomPaint(
                  painter: ShapePainter(context),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "${imagePath}support.png",
                      ),
                      const Text(
                        'Support',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ))),
          blackTab('Sports', "${imagePath}dice.png"),
          blackTab('Live Casino', "${imagePath}casino.png"),
          SizedBox(
              height: 60,
              child: CustomPaint(
                  painter: ShapePainterRight(context),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 8),
                      Image.asset(
                        "${imagePath}register.png",
                      ),
                      const Text(
                        'Register',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ))),
        ],
      ),
    );
  }

  Column blackTab(String title, String image) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(image),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ],
    );
  }
}

class ShapePainter extends CustomPainter {
  ShapePainter(this.context);
  final BuildContext context;
  @override
  void paint(Canvas canvas, Size size) {
    const gradient = LinearGradient(
      colors: [ColorConstants.primaryYellow, ColorConstants.secondaryYellow],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final paint = Paint()..shader = gradient.createShader(rect);
    final path = Path()
      ..moveTo(size.width / 2 - 30, 0)
      ..lineTo(size.width / 2 + MediaQuery.of(context).size.width * .14, 0)
      ..lineTo(size.width / 2 + MediaQuery.of(context).size.width * .2,
          size.height + 100)
      ..lineTo(size.width / 2 - 30, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class ShapePainterRight extends CustomPainter {
  final BuildContext context;

  ShapePainterRight(this.context);

  @override
  void paint(Canvas canvas, Size size) {
    const gradient = LinearGradient(
      colors: [ColorConstants.primaryYellow, ColorConstants.secondaryYellow],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final paint = Paint()..shader = gradient.createShader(rect);

    final path = Path()
      ..moveTo(size.width / 2 - MediaQuery.of(context).size.width * .12, 0)
      ..lineTo(size.width / 2 + MediaQuery.of(context).size.width * 0.2, 0)
      ..lineTo(size.width / 2 + MediaQuery.of(context).size.width * 0.3,
          size.height + MediaQuery.of(context).size.width * .14)
      ..lineTo(size.width / 2 - MediaQuery.of(context).size.width * .24,
          size.height + MediaQuery.of(context).size.width * .8)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class floatingButton extends StatelessWidget {
  const floatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      mini: true,
      backgroundColor: ColorConstants.primaryYellow,
      foregroundColor: Colors.black,
      onPressed: () {
        // Handle FAB press
      },
      child: const Icon(Icons.add),
    );
  }
}
