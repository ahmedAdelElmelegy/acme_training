import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CachedImage extends StatelessWidget {
  final String image;

  const CachedImage({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image,
      fit: BoxFit.fill,
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
