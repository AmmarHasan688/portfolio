import 'package:ammar_hasan/generated/assets.dart';
import 'package:ammar_hasan/theme/responsive_screen_provider.dart';
import 'package:ammar_hasan/widgets/project_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

String getImageFromLink(LinkType type) {
  switch (type) {
    case LinkType.behance:
      return Assets.iconsBehance;
    case LinkType.googlePlay:
      return Assets.iconsGooglePlay;
    case LinkType.appStore:
      return Assets.iconsAppStore;
  }
}

String getTextFromLink(LinkType type) {
  switch (type) {
    case LinkType.behance:
      return "Behance";
    case LinkType.googlePlay:
      return "Google Play";
    case LinkType.appStore:
      return 'App Store';
  }
}

// double getSizeForProjectWidget(BuildContext context) {
//   return ResponsiveScreenProvider.isMobileScreen(context) ? 11 : 13;
// }
// double getHeightForProjectWidget(BuildContext context) {
//   return ResponsiveScreenProvider.isMobileScreen(context) ? 180 : 250;
// }
