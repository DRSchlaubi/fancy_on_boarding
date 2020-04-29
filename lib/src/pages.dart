import 'package:fancy_on_boarding/src/page_model.dart';
import 'package:flutter/material.dart';

class Page extends StatelessWidget {
  final PageModel model;
  final double percentVisible;

  Page({
    this.model,
    this.percentVisible = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: model.color,
        child: Opacity(
          opacity: percentVisible,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Transform(
              transform: Matrix4.translationValues(
                  0.0, 50.0 * (1.0 - percentVisible), 0.0),
              child: Padding(
                padding: EdgeInsets.only(bottom: 25.0),
                child: model.heroAsset,
              ),
            ),
            Transform(
              transform: Matrix4.translationValues(
                  0.0, 30.0 * (1.0 - percentVisible), 0.0),
              child: Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: model.title),
            ),
            Transform(
              transform: Matrix4.translationValues(
                  0.0, 30.0 * (1.0 - percentVisible), 0.0),
              child: Padding(
                  padding: EdgeInsets.only(bottom: 75.0), child: model.body),
            ),
          ]),
        ));
  }
}
