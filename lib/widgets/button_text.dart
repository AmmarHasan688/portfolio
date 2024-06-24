import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:developer';

class ButtonTextLarge extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final String message;

  const ButtonTextLarge(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}

class ButtonTextSmall extends StatelessWidget {
  final String text;
  final String message;
  final Uri url;

  const ButtonTextSmall(
      {Key? key, required this.text, required this.message, required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () async {
            if (!await launchUrl(url)) {
              throw 'Could not launch $url';
            }
            log("Direct to: $url");
          },
          child: Text(
            text,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
      ),
    );
  }
}

class ButtonWithIcon extends StatelessWidget {
  final String? message;
  final String text;
  final String image;
  final String url;

  const ButtonWithIcon(
      {super.key,
      required this.message,
      required this.image,
      required this.url,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.hovered)) {
                  return HexColor('262626')
                      .withOpacity(0.8); // Adjust opacity as needed
                }
                return HexColor('262626');
              },
            ),
          ),
          onPressed: () async {
            if (!await launchUrl(Uri.parse(url))) {
              throw 'Could not launch $url';
            }
            log("Direct to: $url");
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                image,
                width: 18,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
