import 'package:flutter/material.dart';

class GroupChatImage extends StatelessWidget {
  final List<String> imageUrls;
  final double imageSize;
  final double spacing;

  const GroupChatImage({
    super.key,
    required this.imageUrls,
    required this.imageSize,
    required this.spacing,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < imageUrls.length; i++)
          Container(
            margin: EdgeInsets.only(
              right: i == imageUrls.length - 1 ? 0 : spacing,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(imageSize / 2),
              child: Image.network(
                imageUrls[i],
                width: imageSize,
                height: imageSize,
                fit: BoxFit.cover,
              ),
            ),
          ),
      ],
    );
  }
}
