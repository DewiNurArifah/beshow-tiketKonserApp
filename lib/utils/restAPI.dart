import 'package:flutter/material.dart';
import 'package:travelappui/models/placesModel.dart';

class RESTAPI {
  List<PlaceModel> dummyFeatured = [
    PlaceModel(
        placeTitle: "Concert NCT",
        description: "Go where the good vibes are.",
        duration: 5,
        imgUrl: "assets/image/pic1.jpg",
        locationShort: "Jakarta, Indonesia",
        rateperpackage: 400.0,
        rating: 4.8),
    PlaceModel(
        placeTitle: "American Concerts",
        description: "Why does music sound better late at night?",
        duration: 5,
        imgUrl: "assets/image/pic2.jpg",
        locationShort: "Los Angeles, California",
        rateperpackage: 350.0,
        rating: 4.5),
    PlaceModel(
        placeTitle: "Concert BTS",
        description: "Good music, good friends, good vibes.",
        duration: 7,
        imgUrl: "assets/image/pic3.jpg",
        locationShort: "Seoul, South Korea",
        rateperpackage: 250.0,
        rating: 3.8),
    PlaceModel(
        placeTitle: "One Direction Concert",
        description: "Enjoy your concert. We're here because of the music.",
        duration: 5,
        imgUrl: "assets/image/pic4.jpg",
        locationShort: "Chicago, US",
        rateperpackage: 300.0,
        rating: 4.0)
  ];

  List<PlaceModel> dummyAllPlaces = [
    PlaceModel(
        placeTitle: "American Concerts",
        description: "Why does music sound better late at night?",
        duration: 5,
        imgUrl: "assets/image/pic2.jpg",
        locationShort: "Los Angeles, California",
        rateperpackage: 350.0,
        rating: 4.5),
    PlaceModel(
        placeTitle: "Concert BTS",
        description: "Good music, good friends, good vibes.",
        duration: 7,
        imgUrl: "assets/image/pic3.jpg",
        locationShort: "Seoul, South Korea",
        rateperpackage: 350.0,
        rating: 3.8),
    PlaceModel(
        placeTitle: "Concert NCT",
        description: "Go where the good vibes are.",
        duration: 5,
        imgUrl: "assets/image/pic1.jpg",
        locationShort: "Gangnam, South Korea",
        rateperpackage: 400.0,
        rating: 3.5),
    PlaceModel(
        placeTitle: "One Direction Concert",
        description: "Enjoy your concert. We're here because of the music.",
        duration: 5,
        imgUrl: "assets/image/pic4.jpg",
        locationShort: "Chicago, US",
        rateperpackage: 300.0,
        rating: 4.0),
    PlaceModel(
        placeTitle: "American Concerts",
        description: "Why does music sound better late at night?",
        duration: 5,
        imgUrl: "assets/image/pic2.jpg",
        locationShort: "Los Angeles, California",
        rateperpackage: 400.0,
        rating: 4.5),
    PlaceModel(
        placeTitle: "Concert BTS",
        description: "Good music, good friends, good vibes.",
        duration: 6,
        imgUrl: "assets/image/pic3.jpg",
        locationShort: "Seoul, South Korea",
        rateperpackage: 350.0,
        rating: 4.5),
    PlaceModel(
        placeTitle: "Concert NCT",
        description: "Go where the good vibes are.",
        duration: 7,
        imgUrl: "assets/image/pic1.jpg",
        locationShort: "Gangnam, South Korea",
        rateperpackage: 250.0,
        rating: 3.8),
    PlaceModel(
        placeTitle: "One Direction Concert",
        description: "Enjoy your concert. We're here because of the music.",
        duration: 5,
        imgUrl: "assets/image/pic4.jpg",
        locationShort: "Chicago, US",
        rateperpackage: 300.0,
        rating: 4.0),
    PlaceModel(
        placeTitle: "American Concerts",
        description: "Why does music sound better late at night?",
        duration: 5,
        imgUrl: "assets/image/pic2.jpg",
        locationShort: "Los Angeles, California",
        rateperpackage: 400.0,
        rating: 4.5),
    PlaceModel(
        placeTitle: "Concert BTS",
        description: "Good music, good friends, good vibes.",
        duration: 6,
        imgUrl: "assets/image/pic3.jpg",
        locationShort: "Seoul, South Korea",
        rateperpackage: 350.0,
        rating: 4.5),
    PlaceModel(
        placeTitle: "Concert NCT",
        description: "Go where the good vibes are.",
        duration: 7,
        imgUrl: "assets/image/pic1.jpg",
        locationShort: "Gangnam, South Korea",
        rateperpackage: 250.0,
        rating: 3.8),
    PlaceModel(
        placeTitle: "One Direction Concert",
        description: "Enjoy your concert. We're here because of the music.",
        duration: 5,
        imgUrl: "assets/image/pic4.jpg",
        locationShort: "Chicago, US",
        rateperpackage: 300.0,
        rating: 4.0)
  ];

  Future<List<PlaceModel>> getFeaturedPlaces() async {
    await Future.delayed(Duration(milliseconds: 750));
    return dummyFeatured;
  }

  Future<List<PlaceModel>> getAllPlaces() async {
    await Future.delayed(Duration(milliseconds: 950));
    return dummyAllPlaces;
  }
}
