import 'package:biggy237/models/contestant.dart';
import 'package:biggy237/style.dart';
import 'package:biggy237/ui/screens/home/components/contestant_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Contestant> contestants = getContestants();
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              "Contestants",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(
          //     vertical: 8.0,
          //   ),
          //   child: Text(
          //     "Photos",
          //     style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          //   ),
          // ),
          // buildPhotos(),
          // Text(
          //   "Videos",
          //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          // ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                ),
                ListView.builder(
                  itemBuilder: (context, index) => ContestantCard(
                      index: index,
                      contestant: contestants[index],
                      press: () {
                        Navigator.of(context).pushNamed("/contestantDetails");
                      }),
                  itemCount: contestants.length,
                ),
                // ListView.builder(
                //   itemBuilder: (index, context) {
                //     return Card(
                //       elevation: 1,
                //       child: Padding(
                //         padding: const EdgeInsets.all(8.0),
                //         child: Row(
                //           children: [
                //             Container(
                //                 height: 80,
                //                 child: ClipRRect(
                //                   child: Image.asset("assets/images/logo.png"),
                //                   borderRadius: BorderRadius.circular(8.0),
                //                 )),
                //             SizedBox(
                //               width: 16,
                //             ),
                //             Expanded(
                //               child: Column(
                //                 children: [
                //                   Text(
                //                       "Here is an exciiting thing that happened"),
                //                   Padding(
                //                     padding: const EdgeInsets.all(8.0),
                //                     child: Align(
                //                       alignment: FractionalOffset.bottomRight,
                //                       child: Row(
                //                         mainAxisAlignment:
                //                             MainAxisAlignment.end,
                //                         children: [
                //                           Icon(
                //                             EvaIcons.heart,
                //                             color: Colors.red,
                //                           ),
                //                           Text("98")
                //                         ],
                //                       ),
                //                     ),
                //                   )
                //                 ],
                //               ),
                //             )
                //           ],
                //         ),
                //       ),
                //     );
                //   },
                //   itemCount: 20,
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
