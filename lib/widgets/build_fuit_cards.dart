import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class buildFruitCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
// you may want to use an aspect ratio here for tablet support
          height: MediaQuery.sizeOf(context).height * 0.4,
          child: PageView.builder(
// store this controller in a State to save the carousel scroll position
            controller: PageController(viewportFraction: 0.8),
            itemBuilder: (BuildContext context, int itemIndex) {
              return _buildFruitItem(context, itemIndex);
            },
          ),
        )
      ],
    );
  }
}

Widget _buildFruitItem(BuildContext context, int itemIndex) {
  // Define a list of colors
  List<Color> colors = [
    Color(0xfff09a7a),
    Color(0xff73c45a),
    Color(0xfffcc03f),
    Color(0xfff06e7d)
  ];

  // Get the color for the current card index
  Color color = colors[itemIndex % colors.length];

  // Define a list of images
  List<String> images = [
    'assets/images/fresh-wet-nictarine-fruits.png',
    'assets/images/watermelon.png',
    'assets/images/orange-white-white.png',
    'assets/images/strawberry-berry-levitating-white-background.png'
    // Add more image paths as needed
  ];

  // Get the image path for the current card index
  String imagePath = images[itemIndex % images.length];

  return Padding(
    padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.03,
        right: MediaQuery.of(context).size.width * 0.05),
    child: Container(
      height: MediaQuery.sizeOf(context).height * 0.3,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipPath(
            clipper: WaveClipperTwo(
              reverse: true,
            ),
            child: Container(
              height: MediaQuery.sizeOf(context).height * 0.31,
              width: double.infinity,
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: color,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.sizeOf(context).height * 0.02,
                    top: MediaQuery.sizeOf(context).height * 0.08,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.01,
                      ),
                      const Text('50% off',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold)),
                      Text('For Any Fruit',
                          style: TextStyle(
                              letterSpacing: 2,
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w400)),
                      ElevatedButton(
                        //on pressed
                        onPressed: () async {},
                        //text to shoe in to the button
                        child: const Text('Buy Now!',
                            style: TextStyle(color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black54),
                        //style section code here
                        // style: ButtonStyle(
                        //   elevation: MaterialStateProperty.all<double>(0),
                        //   shape:
                        //       MaterialStateProperty.all<RoundedRectangleBorder>(
                        //           RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(18.0),
                        //   )),
                        //   backgroundColor:
                        //       MaterialStateProperty.all<Color>(Colors.black),
                        // ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: -4,
            top: -10,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: MediaQuery.sizeOf(context).width * 0.6,
              height: MediaQuery.sizeOf(context).height * 0.23,
            ),
          )
        ],
      ),
    ),
  );
}
