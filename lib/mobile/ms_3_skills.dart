import 'package:flutter/material.dart';
import '../generated/assets.dart';
import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/responsive_screen_provider.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class MS3Skills extends StatefulWidget {
  const MS3Skills({Key? key}) : super(key: key);

  @override
  State<MS3Skills> createState() => _MS3SkillsState();
}

class _MS3SkillsState extends State<MS3Skills> {
  Widget titles(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ContainerCard().skillsSet(
                    image: Assets.iconsFlutterLogo,
                    titleSkills: "Flutter, Dart",
                    skills: DataValues.flutterSkills,
                    mobile: true),
                ContainerCard().skillsSet(
                    image: Assets.iconsKotlinLogo,
                    titleSkills: "Kotlin",
                    skills: DataValues.kotlinSkills,
                    mobile: true),
                ContainerCard().skillsSet(
                    image: Assets.iconsApi,
                    titleSkills: "APIs Implementations",
                    skills: DataValues.apisSkills,
                    mobile: true),
                ContainerCard().skillsSet(
                    image: Assets.iconsThreedots,
                    titleSkills: "Other",
                    skills: DataValues.otherSkills,
                    mobile: false),
              ],
            )

          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.skillsAchievements,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: FrameTitle(title: DataValues.skillsTitle, description: ''),
            ),
            const SizedBox(height: 10.0),
            titles(context),
            const SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
