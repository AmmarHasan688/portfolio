import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:developer';

class ButtonIcon {
  final String image;
  final Uri url;
  final double height;
  final double width;

  ButtonIcon(
      {required this.image,
      required this.url,
      this.height = 30.0,
      this.width = 30.0});

  Widget returnButton({double scale = 1}) {
    return Transform.scale(
      scale: scale,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () async {
            if (!await launchUrl(url)) {
              throw 'Could not launch $url';
            }
            log("Direct to: $url");
          },
          child: Tooltip(
            message: url.toString(),
            child: Image.asset(image,
                height: height, width: width),
          ),
        ),
      ),
    );
  }
}
