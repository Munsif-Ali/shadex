library shadex;

import 'dart:ui';
import 'package:flutter/material.dart';

class Shadex extends StatelessWidget {
  /// The path to the SVG/Icon/Image asset.
  final Widget child;

  /// The color of the shadow. Default is black.
  final Color shadowColor;

  /// The blur radius of the shadow. Default is 5.0.
  final double shadowBlurRadius;

  /// The offset of the shadow. Default is (2, 2).
  final Offset shadowOffset;

  /// A widget that displays an SVG asset with a shadow effect.
  /// The shadow is created using a blurred and color-filtered version of the SVG.
  const Shadex({
    super.key,
    required this.child,
    this.shadowColor = Colors.black38,
    this.shadowBlurRadius = 5.0,
    this.shadowOffset = const Offset(2, 2),
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Shadow
        if (shadowColor.opacity > 0)
          Transform.translate(
            offset: shadowOffset,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(
                sigmaX: shadowBlurRadius,
                sigmaY: shadowBlurRadius,
                tileMode: TileMode.decal,
              ),
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(shadowColor, BlendMode.srcIn),
                child: child,
              ),
            ),
          ),
        // Original child
        child,
      ],
    );
  }
}
