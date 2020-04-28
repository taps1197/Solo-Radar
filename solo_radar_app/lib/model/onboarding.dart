import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description,
  });
}

final slideList =[
  Slide(
    imageUrl: 'images/onboard1.png',
    title: 'Distance Yourself',
    description: 'The Solo radar app lets you distance yourself from others and lets you know when you’re near.',
  ),
  Slide(
    imageUrl: 'images/onboard2.png',
    title: 'Live Radar Coverage',
    description: 'Live radar alerts you if you are within 6feet of some one else lorem ipsum dolor shit.',
  ),
  Slide(
    imageUrl: 'images/onboard3.png',
    title: 'Know Location',
    description: 'Get to know which area are hotspots around area and get a list of hospitals as well.',
  ),
];