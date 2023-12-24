import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({
    super.key, required this.imageName,
  });
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: ImageMargin.imageMargin,
      child: Image.asset(
        imageName,
        width: MediaQuery.of(context).size.width*0.4 ,
      ),
    );
  }
}
class ImageMargin{
  static const imageMargin=EdgeInsets.all(20);
}

