import 'package:e_comm/constant/colorconst.dart';
import 'package:e_comm/model/productmodel.dart';
import 'package:e_comm/view/sections/favoriteScreenSection/favoritescreenmain.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomsearchDeligate extends SearchDelegate {
  List<Products> searchitem = [
    Products(1,
        productName: "White Spred Collar Shirt",
        productPrice: "600",
        productImageURL:
            "https://images.unsplash.com/photo-1603252109612-24fa03d145c8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"),
    Products(2,
        productName: "Women Silver Leather Slip Ons",
        productPrice: "2,799",
        productImageURL:
            "https://images.unsplash.com/photo-1604136172384-b2e9c43271ec?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
    Products(3,
        productName: "Apple Watch Series 3(42mm)",
        productPrice: "23,900",
        productImageURL:
            "https://images.unsplash.com/photo-1560863185-a4f6199b5768?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"),
    Products(4,
        productName: "Pink Women Trouser",
        productPrice: "700",
        productImageURL:
            "https://images.unsplash.com/photo-1594633312681-425c7b97ccd1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGFudHN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=400&q=60"),
    Products(5,
        productName: "Men Black & Red Crew Neck T-Shirt",
        productPrice: "499",
        productImageURL:
            "https://images.unsplash.com/photo-1627225925129-daf115268cda?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=388&q=80"),
    Products(6,
        productName: "Blue & White Fitted Cap",
        productPrice: "399",
        productImageURL:
            "https://images.unsplash.com/photo-1620231109648-302d034cb29b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"),
    Products(7,
        productName: "White Skirt",
        productPrice: "999",
        productImageURL:
            "https://plus.unsplash.com/premium_photo-1671379012427-ce867d9ac465?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
    Products(8,
        productName: "Womens Blazer",
        productPrice: "1,499",
        productImageURL:
            "https://images.unsplash.com/photo-1582623081729-4b43c8956085?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=900&q=80"),
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear,color: ColorConst.red,))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back,color: ColorConst.red,));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<Products> matchquery = [];
    for (var product in searchitem) {
      if (product.productName.toLowerCase().contains(query.toLowerCase())) {
        matchquery.add(product);
      }
    }
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: matchquery.length,
        itemBuilder: (context, index) {
          var result = matchquery[index];
          return Container(
            height: 50,
            width: 20,
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Stack(children: [
                ///product image
                SizedBox(
                    width: 235,
                    height: 235,
                    child: Image.network(
                      result.productImageURL,
                      fit: BoxFit.cover,
                    )),

                ///product name,price add to cart button
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white70,
                    ),
                    child: ListTile(
                      textColor: ColorConst.darkBlue,
                      iconColor: ColorConst.purple,
                      title: Text(
                        result.productName,
                        style: GoogleFonts.poppins(),
                      ),
                      subtitle: Text(
                        '\u20B9 ${result.productPrice}',
                        style: GoogleFonts.poppins(),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shopping_bag,
                        ),
                        tooltip: "Add To Bag",
                        style: ButtonStyle(
                            elevation: MaterialStatePropertyAll(20),
                            textStyle: MaterialStateProperty.all(
                                GoogleFonts.poppins())),
                      ),
                    ),
                  ),
                ),

                ///
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FavoriteScreenMain(),
                        ));
                  },
                  icon: Icon(
                    Icons.favorite_border_rounded,
                    color: ColorConst.red,
                  ),
                  tooltip: "Add To Favorite",
                  style: ButtonStyle(
                      elevation: MaterialStatePropertyAll(20),
                      textStyle:
                          MaterialStateProperty.all(GoogleFonts.poppins())),
                )
              ]),
            ),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Products> matchquery = [];
    for (var product in searchitem) {
      if (product.productName.toLowerCase().contains(query.toLowerCase())) {
        matchquery.add(product);
      }
    }
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: matchquery.length,
        itemBuilder: (context, index) {
          var result = matchquery[index];
          return Container(
            height: 50,
            width: 20,
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Stack(children: [
                ///product image
                SizedBox(
                    width: 235,
                    height: 235,
                    child: Image.network(
                      result.productImageURL,
                      fit: BoxFit.cover,
                    )),

                ///product name,price add to cart button
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white70,
                    ),
                    child: ListTile(
                      textColor: ColorConst.darkBlue,
                      iconColor: ColorConst.purple,
                      title: Text(
                        result.productName,
                        style: GoogleFonts.poppins(),
                      ),
                      subtitle: Text(
                        '\u20B9 ${result.productPrice}',
                        style: GoogleFonts.poppins(),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shopping_bag,
                        ),
                        tooltip: "Add To Bag",
                        style: ButtonStyle(
                            elevation: MaterialStatePropertyAll(20),
                            textStyle: MaterialStateProperty.all(
                                GoogleFonts.poppins())),
                      ),
                    ),
                  ),
                ),

                ///
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FavoriteScreenMain(),
                        ));
                  },
                  icon: Icon(
                    Icons.favorite_border_rounded,
                    color: ColorConst.red,
                  ),
                  tooltip: "Add To Favorite",
                  style: ButtonStyle(
                      elevation: MaterialStatePropertyAll(20),
                      textStyle:
                          MaterialStateProperty.all(GoogleFonts.poppins())),
                )
              ]),
            ),
          );
        });
  }
}
