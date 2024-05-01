import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class mid_white_bg extends StatelessWidget {
  const mid_white_bg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.3),
      child: ClipPath(
        clipper: WaveClipperTwo(reverse: true, flip: true),
        child: Container(
          height: double.infinity,
          color: Colors.white,
        ),
      ),
    );
  }
}
