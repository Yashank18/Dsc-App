import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../model/slide.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: screenHeight*0.01),
          width: screenWidth,
          height: screenHeight*0.35,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black54,width: 2),
            image: DecorationImage(
              image:CachedNetworkImageProvider(slideList[index].imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}