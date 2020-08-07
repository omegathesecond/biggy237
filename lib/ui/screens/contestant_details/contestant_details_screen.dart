import 'package:biggy237/style.dart';
import 'package:biggy237/ui/screens/contestant_details/components/body.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class ContestantDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(EvaIcons.arrowBack),
          onPressed: Navigator.of(context).pop,
          color: Colors.white,
        ),
        title: Text(
          "Back".toUpperCase(),
          style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.white),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(EvaIcons.heartOutline),
            onPressed: Navigator.of(context).pop,
            color: Colors.white,
          ),
        ],
      ),
      body: SingleChildScrollView(child: ContestantDetailsBody()),
    );
  }
}
