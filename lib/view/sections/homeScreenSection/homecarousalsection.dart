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
        CarousalproductImageURL:
            "https://images.unsplash.com/photo-1594633312681-425c7b97ccd1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGFudHN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=400&q=60"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: carousalProducts01.length,
      itemBuilder: (BuildContext context, index) {
        final carousalProducts02 = carousalProducts01[index];
        return CarouselSlider(items: [
          Container(
              width: double.infinity,
              // height: 150,
              child: Image.network(
                carousalProducts02.CarousalproductImageURL,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ))
        ], options: CarouselOptions());
      },
    );
  }
}
