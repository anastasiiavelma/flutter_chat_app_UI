import 'package:flutter/material.dart';

class GroupChatImage extends StatelessWidget {
  final List<String> imageUrls;
  final double imageSize;

  const GroupChatImage({
    super.key,
    required this.imageUrls,
    required this.imageSize,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //full image
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: CircleAvatar(
            radius: imageSize / 2,
            backgroundImage: AssetImage(imageUrls[0]),
          ),
        ),
        const SizedBox(width: 10.0),
        //half image
        Padding(
          padding: const EdgeInsets.only(right: 0),
          child: Positioned(
            right: imageSize,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2.0,
                ),
              ),
              child: CircleAvatar(
                radius: imageSize / 2,
                backgroundImage: AssetImage(imageUrls[1]),
              ),
            ),
          ),
        ),
        // icon
        Positioned(
          top: 25,
          right: 5,
          child: Container(
            width: 25,
            height: 20,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 25, 1, 65),
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(4, 1.5, 4, 0),
              child: Text(
                textAlign: TextAlign.justify,
                '+3',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
