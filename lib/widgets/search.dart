import 'package:flutter/material.dart';

class search extends StatelessWidget {
  const search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.sizeOf(context).height * 0.01,
      child: Padding(
        padding: EdgeInsets.all(
          MediaQuery.sizeOf(context).height * 0.02,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width - 32,
          height: MediaQuery.sizeOf(context).height * 0.06,
          decoration: BoxDecoration(
            color: Colors.green.withOpacity(0.5),
            borderRadius: BorderRadius.all(Radius.circular(40)),
          ),
          child: Center(
            child: TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.black),
                  alignLabelWithHint: true,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  suffixIcon: Icon(Icons.search),
                  suffixIconColor: Colors.black,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(0xff73c45a),
                        width: 2.0), // Making the underline red when focused
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    borderSide:
                        BorderSide(color: Color(0xff73c45a), width: 2.0),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
