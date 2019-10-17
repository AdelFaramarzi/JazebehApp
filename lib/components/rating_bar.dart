import 'dart:math';

import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  RatingBar({this.numStars = 5, this.rating = 0.0, this.onChanged});

  final int numStars;
  final double rating;
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragDown: (dragDown) {
        RenderBox box = context.findRenderObject();
        var local = box.globalToLocal(dragDown.globalPosition);
        var rating = (local.dx / box.size.width * numStars * 2).ceilToDouble() / 2;
        rating = max(0.0, rating);
        rating = min(numStars.toDouble(), rating);
        onChanged(rating);
      },
      onHorizontalDragUpdate: (dragUpdate) {
        RenderBox box = context.findRenderObject();
        var local = box.globalToLocal(dragUpdate.globalPosition);
        var rating = (local.dx / box.size.width * numStars * 2).ceilToDouble() / 2;
        rating = max(0.0, rating);
        rating = min(numStars.toDouble(), rating);
        onChanged(rating);
      },
      child: Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
              numStars, (index) => _buildStar(context, index),
              growable: false)),
    );
  }

  Widget _buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = Icon(
        Icons.star_border,
        color: Theme.of(context).accentColor
      );
    } else if (index > rating - 1 && index < rating) {
      icon = Icon(
        Icons.star_half,
        color: Theme.of(context).accentColor,
      );
    } else {
      icon = Icon(
        Icons.star,
        color: Theme.of(context).accentColor,
      );
    }
    return icon;
  }
}