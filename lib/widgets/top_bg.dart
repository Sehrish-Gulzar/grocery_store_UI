import 'package:flutter/material.dart';

class top_bg extends StatelessWidget {
  const top_bg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Image.asset(
        "assets/images/3d-leaves-defocussed-background.jpg",
        fit: BoxFit.cover,
        filterQuality: FilterQuality.high,
      ),
    );
  }
}
