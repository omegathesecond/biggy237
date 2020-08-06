import 'package:biggy237/ui/screens/home/components/photos.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 8, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Highlights",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
            ),
            child: Text(
              "Photos",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          buildPhotos(),
          Text(
            "Videos",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (index, context) {
                return Card(
                  elevation: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                            height: 80,
                            child: ClipRRect(
                              child: Image.asset("assets/images/logo.png"),
                              borderRadius: BorderRadius.circular(8.0),
                            )),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text("Here is an exciiting thing that happened"),
                              
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: FractionalOffset.bottomRight,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(
                                        EvaIcons.heart,
                                        color: Colors.red,
                                      ),
                                      Text("98")
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: 20,
            ),
          )
        ],
      ),
    );
  }
}
