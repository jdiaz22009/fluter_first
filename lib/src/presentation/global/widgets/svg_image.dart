import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgImageWidget extends StatelessWidget {
  final String path;
  final double width;
  final double height;

  const SvgImageWidget({
    Key? key,
    required this.path,
    this.width = 20.0,
    this.height = 20.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      width: width,
      height: height,
    );
  }
}
