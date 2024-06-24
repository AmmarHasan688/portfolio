import 'package:flutter/material.dart';
import '../generated/assets.dart';
import '../statics/data_values.dart';
import 'button_icon.dart';

class SocialProfiles extends StatelessWidget {
  const SocialProfiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // ButtonIcon(name: 'dev', url: DataValues.hackerrankURL).returnButton(),
        // const SizedBox(width: 20.0),
        // ButtonIcon(name: 'github', url: DataValues.githubURL1).returnButton(),
        // const SizedBox(width: 20.0),
        ButtonIcon(image: Assets.iconsLinkedin, url: DataValues.linkedinURL)
            .returnButton(),
        const SizedBox(width: 20.0),
        ButtonIcon(image: Assets.iconsGooglePlayWhite, url: DataValues.googlePlayUrl)
            .returnButton(scale: 0.85),
        const SizedBox(width: 20.0),
        ButtonIcon(image: Assets.iconsEmail, url: DataValues.emailUrl)
            .returnButton(scale: 1.1),
        const SizedBox(width: 20.0),
        // ButtonIcon(name: 'instagram', url: DataValues.instagramURL)
        //     .returnButton(),
      ],
    );
  }
}
