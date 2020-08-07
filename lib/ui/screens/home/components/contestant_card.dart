import 'package:biggy237/models/contestant.dart';
import 'package:biggy237/style.dart';
import 'package:flutter/material.dart';

class ContestantCard extends StatelessWidget {
  final int index;
  final Contestant contestant;
  final Function press;

  const ContestantCard({Key key, this.index, this.contestant, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      // color: Colors.blueAccent,
      height: 160,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 136,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: kBlueColor,
                  boxShadow: [kDefaultShadow]),
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22)),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 160,
                width: 200,
                child: Image.asset(
                  contestant.displayPhoto,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                //compensate for picture size
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Text(
                        contestant.name,
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(fontSize: 20),
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding * 1.5,
                          vertical: kDefaultPadding / 4),
                      decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(22),
                              topRight: Radius.circular(22))),
                      child: Text(
                        contestant.hashtag,
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
