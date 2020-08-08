import 'package:flutter/material.dart';
import 'package:furniture_app/components/title_text.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/Categories.dart';
import 'package:furniture_app/size_config.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key key, @required this.category}) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: 205,
        child: AspectRatio(
          aspectRatio: 0.8,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              ClipPath(
                clipper: CategoryCustomShape(),
                child: AspectRatio(
                  aspectRatio: 1.025,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: kSecondaryCaolor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TitleText(title: category.title),
                        SizedBox(height: SizeConfig.defaultSize),
                        Text(
                          "${category.numOfProducts}+ Products",
                          style: TextStyle(color: kTextColor.withOpacity(0.6)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: AspectRatio(
                  aspectRatio: 1.15,
                  child: FadeInImage.assetNetwork(
                    placeholder: "assets/spinner.gif",
                    image: category.image,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryCustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double height = size.height;
    double width = size.width;
    double cornerSize = 30;

    path.lineTo(0, height - cornerSize);
    path.quadraticBezierTo(0, height, cornerSize, height); // pojok kiri bawah
    path.lineTo(width - cornerSize, height);
    path.quadraticBezierTo(
        width, height, width, height - cornerSize); // pojok kanan bawah
    path.lineTo(width, cornerSize);
    path.quadraticBezierTo(width, 0, width - cornerSize, 0);
    path.lineTo(cornerSize, cornerSize * 0.75);
    path.quadraticBezierTo(0, cornerSize, 0, cornerSize * 2);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
