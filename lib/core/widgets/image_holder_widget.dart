import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageHolder {
  static final ImageHolder _imageHolder = ImageHolder._internal();

  factory ImageHolder() {
    return _imageHolder;
  }

  ImageHolder._internal();

  static Widget cachedImage({
    required String imageUrl,
    BoxFit fit = BoxFit.cover,
    double width=50,
    double height=50
  }) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: fit,
      width: width,
      height: height,
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }

  static Widget assetImage({
    required String assetPath,
    double width=50,
    double height=50,
    BoxFit fit = BoxFit.cover,
  }) {
    return Image.asset(
      assetPath,
      fit: fit,
      width: width,
      height: height,
    );
  }

  static Widget networkImage({
    required String networkPath,
    BoxFit fit = BoxFit.cover,
    double width=50,
    double height=50,
  }) {
    return Image.network(
      networkPath,
      fit: fit,
      width: width,
      height: height,
    );
  }

  static Widget svgImage({
    required String svgString,
    BoxFit fit = BoxFit.cover,
    double width=50,
    double height=50,
  }) {
    return SvgPicture.string(
      svgString,
      fit: fit,
      width: width,
      height: height,
    );
  }


}
