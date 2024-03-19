import 'package:flutter/material.dart';

class ImageHeader extends StatelessWidget {
  const ImageHeader({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
          child: Center(
            child: Image.asset(
              image,
              width:  MediaQuery.of(context).size.width,
              height: 200,
              fit: BoxFit.fill,
              alignment: Alignment.center,
            ),
          ) 
        );
  }
}
