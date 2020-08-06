  import 'package:flutter/material.dart';
  Container buildPhotos() {
    return Container(
          height: 120,
          child: ListView.builder(
            itemBuilder: (item, context) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  child: Image.asset("assets/images/logo.png"),
                  borderRadius: BorderRadius.circular(16),
                ),
              );
            },
            itemCount: 10,
            scrollDirection: Axis.horizontal,
          ),
        );
  }