import 'package:flutter/material.dart';

class PageModel {
  final Color color;
  final Widget heroAsset;
  final Widget title;
  final Widget body;
  final String iconAssetPath;

  PageModel({
    @required this.color,
    @required this.heroAsset,
    this.title,
    this.body,
    @required this.iconAssetPath,
  })  : assert(title != null),
        assert(body != null),
        assert(color != null),
        assert(heroAsset != null),
        assert(iconAssetPath != null);
}
