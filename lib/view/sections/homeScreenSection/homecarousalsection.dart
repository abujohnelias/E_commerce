import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../model/carousalmodel.dart';

class HomeScreenCarousal extends StatelessWidget {
  HomeScreenCarousal({super.key});
  List<CarousalProducts> carousalProducts01 = [
    CarousalProducts("c1",
        CarousalproductPrice: "CarousalproductPrice",
        CarousalproductImageURL: "CarousalproductImageURL"),
    CarousalProducts("c2",
        CarousalproductPrice: "CarousalproductPrice",
        CarousalproductImageURL: "CarousalproductImageURL"),
    CarousalProducts("c3",
        CarousalproductPrice: "CarousalproductPrice",
        CarousalproductImageURL: "CarousalproductImageURL"),
    CarousalProducts("c4",
        CarousalproductPrice: "CarousalproductPrice",
        CarousalproductImageURL:
            "https://images.unsplash.com/photo-1572196223922-d8b7e0ab0b4d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
    CarousalProducts("c5",
        CarousalproductPrice: "CarousalproductPrice",
        CarousalproductImageURL:
            "https://images.unsplash.com/photo-1572196223922-d8b7e0ab0b4d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
    CarousalProducts("c6",
        CarousalproductPrice: "CarousalproductPrice",
        CarousalproductImageURL:
            "https://images.unsplash.com/photo-1572196223922-d8b7e0ab0b4d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: carousalProducts01.length,
      itemBuilder: (BuildContext context, index) {
        final carousalProducts02 = carousalProducts01[index];
        return CarouselSlider(items: [
          Container(child:Image.network(carousalProducts02.CarousalproductImageURL))
        ], options: CarouselOptions());
      },
    );
  }
}
