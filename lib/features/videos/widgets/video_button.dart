import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:titok_clone/constants/gaps.dart';
import 'package:titok_clone/constants/sizes.dart';

class VideoButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const VideoButton({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FaIcon(
          icon,
          color: color,
          size: Sizes.size32,
        ),
        Gaps.v10,
        Text(
          text,
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
            fontSize: Sizes.size14,
          ),
        ),
      ],
    );
  }
}
