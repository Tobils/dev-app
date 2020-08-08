import 'package:flutter/material.dart';
import 'package:furniture_app/components/title_text.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/Categories.dart';
import 'package:furniture_app/models/Product.dart';
import 'package:furniture_app/screens/home/components/categories.dart';
import 'package:furniture_app/screens/home/components/category_card.dart';
import 'package:furniture_app/services/fetchCategories.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It enable scroll view
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TitleText(
              title: 'Browse by Category',
            ),
          ),
          FutureBuilder(
            future: fetchCategories(),
            builder: (context, snapshot) => snapshot.hasData
                ? Categories(
                    categories: snapshot.data,
                  )
                : Center(child: Image.asset("assets/ripple.gif")),
          ),
          Divider(height: 5),
          Padding(
            padding: EdgeInsets.all(20),
            child: TitleText(title: "Recommands for you"),
          ),
          Container(
            width: 145,
            decoration: BoxDecoration(
              color: kSecondaryCaolor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: AspectRatio(
              aspectRatio: 0.693,
              child: Column(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 1,
                    child: FadeInImage.assetNetwork(
                      placeholder: "assets/spinner.gif",
                      image: product.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: TitleText(title: product.title)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
