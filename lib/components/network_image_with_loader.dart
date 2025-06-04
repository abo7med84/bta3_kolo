import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'skleton/skelton.dart'; // Corrected from 'skelton'

class NetworkImageWithLoader extends StatelessWidget {
  final BoxFit fit;
  final String src;
  final double radius;

  const NetworkImageWithLoader(
      this.src, {
        super.key,
        this.fit = BoxFit.cover,
        this.radius = defaultPadding,
      });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(radius)),
      child: CachedNetworkImage(
        imageUrl: src,
        fit: fit,
        placeholder: (context, url) => Skeleton(fit: fit),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}