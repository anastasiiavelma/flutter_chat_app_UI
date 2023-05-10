import 'dart:math';

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
        // Full circle image
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: CircleAvatar(
            radius: imageSize / 2,
            backgroundImage: AssetImage(imageUrls[0]),
          ),
        ),
        const SizedBox(width: 10.0),
        // Half circle image
        Padding(
          padding: EdgeInsets.only(right: 0),
          child: Positioned(
            right: imageSize / 4,
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
      ],
    );
  }
}
