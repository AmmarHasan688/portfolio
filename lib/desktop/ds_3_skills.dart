import 'package:ammar_hasan/generated/assets.dart';
import 'package:ammar_hasan/utils/HoverScaleWidget.dart';
import 'package:ammar_hasan/utils/extensions.dart';
import 'package:flutter/material.dart';
import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/responsive_screen_provider.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class DS3Skills extends StatefulWidget {
  const DS3Skills({Key? key}) : super(key: key);

  @override
  State<DS3Skills> createState() => _DS3SkillsState();
}

class _DS3SkillsState extends State<DS3Skills> {
  Widget titles(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 100,
                  child: ContainerCard().skillsSet(
                      image: Assets.iconsFlutterLogo,
                    titleSkills: "Flutter, Dart",
                      skills: DataValues.flutterSkills,
                      mobile: false)),
              const Spacer(
                flex: 7,
              ),
              Expanded(
                  flex: 100,
                  child: ContainerCard().skillsSet(
                      image: Assets.iconsKotlinLogo,
                    titleSkills: "Kotlin",
                      skills: DataValues.kotlinSkills,
                      mobile: false)),
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 100,
                  child: ContainerCard().skillsSet(
                    image: Assets.iconsApi,
                      titleSkills: "APIs Implementations",
                      skills: DataValues.apisSkills,
                      mobile: false)),
              const Spacer(
                flex: 7,
              ),
              Expanded(
                  flex: 100,
                  child: ContainerCard().skillsSet(
                      image: Assets.iconsThreedots,
                      titleSkills: "Other",
                      skills: DataValues.otherSkills,
                      mobile: false)),
            ],
          ),
        ],
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.skillsAchievements,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 18),
        child: Column(
          children: [
            const FrameTitle(title: DataValues.skillsTitle, description: ''),
            titles(context),
            const SizedBox(height: 40.0),
          ],
        ),
      ),
    );
  }
}
