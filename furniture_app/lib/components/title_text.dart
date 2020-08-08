import 'package:flutter/material.dart';
import 'package:furniture_app/size_config.dart';

class TitleText extends StatelessWidget {
  const TitleText({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Text(
      title,
      style: TextStyle(
        fontSize: defaultSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
