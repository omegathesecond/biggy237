import 'package:biggy237/style.dart';
import 'package:biggy237/ui/screens/contestant_details/components/display_photo.dart';
import 'package:biggy237/ui/screens/contestant_details/components/social_media.dart';
import 'package:biggy237/ui/screens/home/components/photos.dart';
import 'package:flutter/material.dart';

class ContestantDetailsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Text(
                "MC DIBENJA",
                style: TextStyle(
                    fontSize: 32, fontWeight: FontWeight.w600, color: Colors.white),
              ),
              Text(
                "VOTE 1459",
                style: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.w600, color: kSecondaryColor),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DisplayPhoto(
                size: size,
                image: "assets/images/test.png",
              ),
              SocialMedia(),
              Container(
                height: 100,
                child: buildPhotos(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: Text(
                  "MC Dibenja",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontWeight: FontWeight.w700),
                ),
              ),
              Text(
                "#VOTEDIBENJA",
                style: TextStyle(
                    fontSize: 18,
                    color: kSecondaryColor,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "this is the descriptions bala ",
                style: TextStyle(color: kTextLightColor),
              ),
              SizedBox(
                height: kDefaultPadding,
              )
            ],
          ),
        ),
      ],
    );
  }
}
