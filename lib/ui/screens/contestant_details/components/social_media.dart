import 'package:biggy237/style.dart';
import 'package:biggy237/ui/screens/contestant_details/components/social_media_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/2  ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SocialMediaIcon(iconData: FontAwesomeIcons.facebookSquare, color: Colors.blue,),
          SocialMediaIcon(iconData: FontAwesomeIcons.instagram, color: Colors.pink,),
          SocialMediaIcon(iconData: FontAwesomeIcons.twitter, color: Colors.lightBlue,),
         
        ],
      ),
    );
  }
}
