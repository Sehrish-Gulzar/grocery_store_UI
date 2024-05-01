import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.3,
          width: MediaQuery.of(context).size.width,
          child: PageView.builder(
            controller: PageController(viewportFraction: 0.42),
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
    Colors.white,
    Colors.white,
    Colors.white,
  ];
  List<String> text = [
    "Meat",
    "Vegetables",
    "Chicken",
  ];
  String itemText = text[itemIndex % text.length];
  // Get the color for the current card index
  Color color = colors[itemIndex % colors.length];

  // Define a list of images
  List<String> images = [
    'assets/images/raw-meat.png',
    'assets/images/basket-full-vegetables.png',
    'assets/images/grill-slice-lunch-butcher-juicy.png',

    // Add more image paths as needed
  ];

  // Get the image path for the current card index
  String imagePath = images[itemIndex % images.length];

  return SizedBox(
    height: MediaQuery.sizeOf(context).height * 0.3,
    child: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ClipPath(
          clipper: MovieTicketBothSidesClipper(),
          child: Container(
            margin:
                EdgeInsets.only(left: MediaQuery.sizeOf(context).height * 0.02),
            height: MediaQuery.sizeOf(context).height * 0.1,
            width: double.infinity,
            child: Card(
              color: color,
              child: Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.sizeOf(context).width * 0.02,
                  right: MediaQuery.sizeOf(context).width * 0.02,
                  top: MediaQuery.sizeOf(context).height * 0.05,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(itemText,
                        style: TextStyle(
                            letterSpacing: 3,
                            color: Colors.black54,
                            fontSize: 13,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: MediaQuery.sizeOf(context).height * 0.15,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
            height: MediaQuery.sizeOf(context).height * 0.122,
          ),
        )
      ],
    ),
  );
}
