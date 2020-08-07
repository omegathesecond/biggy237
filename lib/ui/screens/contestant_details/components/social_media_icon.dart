import 'package:biggy237/style.dart';
import 'package:flutter/material.dart';

class SocialMediaIcon extends StatelessWidget {
  final IconData iconData;
  final Color color;

  const SocialMediaIcon({
    Key key,
    this.iconData, this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
      child: Icon(
        iconData,
        color: color,
      ),
    );
  }
}