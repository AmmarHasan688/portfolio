import 'package:ammar_hasan/theme/responsive_screen_provider.dart';
import 'package:ammar_hasan/utils/extensions.dart';
import 'package:ammar_hasan/utils/helpers.dart';
import 'package:ammar_hasan/widgets/project_data.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:developer';
import '../generated/assets.dart';
import '../theme/app_theme.dart';
import '../widgets/text_pairs.dart';
import 'button_text.dart';
import 'skill_chip.dart';

class ContainerCard {
  Widget skillsSet({
    required bool mobile,
    required String image,
    required List<String> skills,
    required String titleSkills,
  }) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppThemeData.cardGrey,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                titleSkills,
                style: TextStyle(
                    fontSize: mobile ? 14 : 16, fontWeight: FontWeight.bold),
              ),
              Image.asset(
                image,
                width: mobile ? 20 : 20,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Wrap(
            spacing: 10,
            runSpacing: 8,
            children: skills
                .map((e) => Chip(
                      label: Text(e),
                      labelStyle: TextStyle(fontSize: mobile ? 12 : 14),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }

  // Widget type1({
  //   required String title,
  //   required String description,
  //   required String image,
  //   required String message,
  //   required Uri url,
  // }) {
  //   return Container(
  //     decoration: BoxDecoration(
  //       color: AppThemeData.cardGrey,
  //       borderRadius: BorderRadius.circular(10.0),
  //       boxShadow: [
  //         BoxShadow(
  //           color: Colors.black.withOpacity(0.2),
  //           spreadRadius: 2,
  //           blurRadius: 5,
  //           offset: const Offset(0, 3), // changes position of shadow
  //         ),
  //       ],
  //     ),
  //     child: Padding(
  //       padding: const EdgeInsets.all(30.0),
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Image.asset(image, height: 70.0, width: 70.0),
  //               const SizedBox(height: 20.0),
  //               SelectableText(
  //                 title,
  //                 style: TextStyle(
  //                   fontSize:
  //                       AppThemeData.darkTheme.textTheme.titleMedium!.fontSize,
  //                   fontWeight: AppThemeData
  //                       .darkTheme.textTheme.headlineSmall!.fontWeight,
  //                   color: AppThemeData.textWhite,
  //                 ),
  //               ),
  //             ],
  //           ),
  //           const SizedBox(height: 10.0),
  //           SelectableText(description,
  //               style: AppThemeData.darkTheme.textTheme.labelLarge),
  //           const SizedBox(height: 20.0),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  Widget educationDesktop({
    required String image,
    required String title,
    required List values,
    required String message,
    required Uri url,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppThemeData.cardGrey,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipOval(
                  child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(3),
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
                const SizedBox(height: 20.0),
                SelectableText(title,
                    style: TextStyle(
                      fontSize: AppThemeData
                          .darkTheme.textTheme.titleMedium!.fontSize,
                      fontWeight: AppThemeData
                          .darkTheme.textTheme.headlineSmall!.fontWeight,
                      color: AppThemeData.textPrimary,
                    )),
                const SizedBox(height: 10.0),
                TextPairs().type2(
                  title: values[0],
                  value1: null,
                  //value2: values[2],
                  isThreeLines: false,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextPairs().type2(
                      title: values[1],
                      value1: null,
                      isThreeLines: false,
                    ),
                    const Spacer(
                      flex: 4,
                    ),
                    TextPairs().type2(
                      title: null,
                      value1: values[2],
                      isThreeLines: false,
                    ),
                    const Spacer(
                      flex: 10,
                    ),
                  ],
                ),
                // TextPairs().type2(
                //   title: values[6],
                //   value1: values[7],
                //   isThreeLines: false,
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget educationMobile({
    required String image,
    required String title,
    required List values,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppThemeData.cardGrey,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipOval(
                  child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(3),
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
                const SizedBox(height: 20.0),
                SelectableText(title,
                    style: TextStyle(
                      fontSize: AppThemeData
                          .darkTheme.textTheme.titleSmall!.fontSize,
                      fontWeight: AppThemeData
                          .darkTheme.textTheme.headlineSmall!.fontWeight,
                      color: AppThemeData.textPrimary,
                    )),
                const SizedBox(height: 10.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextPairs().type2(
                      title: values[1],
                      value1: null,
                      isThreeLines: false,
                    ),
                    const Spacer(
                      flex: 4,
                    ),
                    TextPairs().type2(
                      title: null,
                      value1: values[2],
                      isThreeLines: false,
                    ),
                    const Spacer(
                      flex: 10,
                    ),
                  ],
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget desktopProjectCard({
    required List<String> images,
    required String title,
    required List<MyLink> links,
    required double fontSize,
    required String lang,
    required double height,
    required String values,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppThemeData.cardGrey,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProjectImagesWidget(
                  images: images,
                  height: height,
                ),
                const SizedBox(height: 20.0),
                Text(title,
                    style: TextStyle(
                      fontSize: AppThemeData
                          .darkTheme.textTheme.titleMedium!.fontSize,
                      color: AppThemeData.textPrimary,
                      fontWeight: AppThemeData
                          .darkTheme.textTheme.headlineSmall!.fontWeight,
                    )),
                const SizedBox(height: 10.0),
                Text(values,
                    style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: AppThemeData
                            .darkTheme.textTheme.labelLarge!.fontWeight,
                        color: AppThemeData.textGreyDark)),
              ],
            ),
            // SizedBox(height: 80,),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      lang == "Flutter"
                          ? Assets.iconsFlutterLogo
                          : Assets.iconsKotlinLogo,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "$lang project",
                      style: TextStyle(
                          fontSize: AppThemeData
                              .darkTheme.textTheme.bodySmall!.fontSize),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: links.map((e) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ButtonWithIcon(
                          message: e.text ?? getTextFromLink(e.type),
                          image: getImageFromLink(e.type),
                          url: e.link,
                          text: e.text ?? getTextFromLink(e.type)),
                    );
                  }).toList(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget mobileProjectCard({
    required List<String> images,
    required String title,
    required String lang,
    required List<MyLink> links,
    required double fontSize,
    required BuildContext context,
    required double height,
    required String values,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppThemeData.cardGrey,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProjectImagesWidget(images: images, height: height),
                  const SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(title,
                        style: TextStyle(
                          fontSize: AppThemeData
                              .darkTheme.textTheme.titleMedium!.fontSize,
                          fontWeight: AppThemeData
                              .darkTheme.textTheme.headlineSmall!.fontWeight,
                          color: AppThemeData.textPrimary,
                        )),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(values,
                            style: TextStyle(
                                fontSize: fontSize,
                                fontWeight: AppThemeData
                                    .darkTheme.textTheme.labelLarge!.fontWeight,
                                color: AppThemeData.textGreyDark)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // const Spacer(),
            Wrap(
              spacing: 10,
              runSpacing: 4,
              crossAxisAlignment: WrapCrossAlignment.center,
              direction: Axis.horizontal,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          lang == "Flutter"
                              ? Assets.iconsFlutterLogo
                              : Assets.iconsKotlinLogo,
                          width: 15,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          "$lang project",
                          style: const TextStyle(
                              fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                        width: context.width * 0.2,
                        child: const Divider()),
                  ],
                ),
                ...links.map((e) {
                  return ButtonWithIcon(
                      message: e.text ?? getTextFromLink(e.type),
                      image: getImageFromLink(e.type),
                      url: e.link,
                      text: e.text ?? getTextFromLink(e.type));
                }).toList()
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget type4({
    required String image,
    required String title,
    required String message,
    required Uri url,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Tooltip(
          message: 'Visit $message',
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
                message,
                style: TextStyle(
                  fontSize:
                      AppThemeData.darkTheme.textTheme.labelLarge!.fontSize,
                  fontWeight:
                      AppThemeData.darkTheme.textTheme.labelLarge!.fontWeight,
                  color: AppThemeData.textWhite,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget type5({
    required String title,
    required String image1,
    required String image2,
    required String image3,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppThemeData.cardGrey,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  title,
                  style: TextStyle(
                    fontSize:
                        AppThemeData.darkTheme.textTheme.titleMedium!.fontSize,
                    fontWeight: AppThemeData
                        .darkTheme.textTheme.headlineSmall!.fontWeight,
                    color: AppThemeData.textWhite,
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  children: [
                    Expanded(
                      child: CircleAvatar(
                        radius: 45,
                        child: Image.asset(
                          image1,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      child: CircleAvatar(
                        radius: 45,
                        child: Image.asset(
                          image2,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      child: CircleAvatar(
                        radius: 45,
                        child: Image.asset(
                          image3,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }

  Widget type6({
    required String title,
    required List<String> value,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppThemeData.cardGrey,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  title,
                  style: TextStyle(
                    fontSize:
                        AppThemeData.darkTheme.textTheme.titleMedium!.fontSize,
                    fontWeight: AppThemeData
                        .darkTheme.textTheme.headlineSmall!.fontWeight,
                    color: AppThemeData.textWhite,
                  ),
                ),
                const SizedBox(height: 20.0),
                Wrap(
                  spacing: 12.0,
                  runSpacing: 15.0,
                  children: [
                    for (int i = 0; i < value.length; i++)
                      SkillChip(label: value[i]),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }

  Widget MStype6({
    required String title,
    required double runSpacing,
    required double spacing,
    required List<String> value,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppThemeData.cardGrey,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  title,
                  style: TextStyle(
                    fontSize:
                        AppThemeData.darkTheme.textTheme.titleMedium!.fontSize,
                    fontWeight: AppThemeData
                        .darkTheme.textTheme.headlineSmall!.fontWeight,
                    color: AppThemeData.textWhite,
                  ),
                ),
                const SizedBox(height: 18.0),
                Wrap(
                  spacing: spacing,
                  runSpacing: runSpacing,
                  children: [
                    for (int i = 0; i < value.length; i++)
                      SkillChip(label: value[i]),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }

  Widget type7({
    required String title,
    required String image1,
    required String image2,
    required String image3,
    required String image4,
    required String image5,
    required String image6,
    required String image7,
    required String image8,
    required String image9,
    required String image10,
    required String image11,
    required String image12,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppThemeData.cardGrey,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  title,
                  style: TextStyle(
                    fontSize:
                        AppThemeData.darkTheme.textTheme.titleMedium!.fontSize,
                    fontWeight: AppThemeData
                        .darkTheme.textTheme.headlineSmall!.fontWeight,
                    color: AppThemeData.textWhite,
                  ),
                ),
                const SizedBox(height: 20.0),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                            radius: 50,
                            backgroundColor:
                                const Color(0xFF02045D).withOpacity(.2),
                            child: Image.asset(
                              image1,
                              height: 60,
                              fit: BoxFit.cover,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                            radius: 50,
                            backgroundColor:
                                const Color(0xFF02045D).withOpacity(.2),
                            child: Image.asset(
                              image2,
                              height: 62,
                              fit: BoxFit.cover,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                            radius: 50,
                            child: Image.asset(
                              image3,
                              height: 70,
                              fit: BoxFit.cover,
                            )),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                            backgroundColor:
                                const Color(0xFF350446).withOpacity(.2),
                            radius: 50,
                            child: Image.asset(
                              image4,
                              height: 55,
                              fit: BoxFit.cover,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                            radius: 52,
                            backgroundColor:
                                const Color(0xFF02045D).withOpacity(.2),
                            child: Image.asset(
                              image5,
                              height: 72,
                              fit: BoxFit.cover,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                            radius: 53,
                            //backgroundColor: Color(0xFFFFFF).withOpacity(.2),
                            child: Image.asset(
                              image12,
                              height: 60,
                              color: Colors.white,
                              fit: BoxFit.cover,
                            )),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.yellow.withOpacity(.09),
                            child: Image.asset(
                              image7,
                              height: 68,
                              fit: BoxFit.cover,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                            radius: 55,
                            child: Image.asset(
                              image8,
                              height: 40,
                              fit: BoxFit.cover,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                            radius: 53,
                            backgroundColor:
                                const Color(0xFF02045D).withOpacity(.2),
                            child: Image.asset(
                              image10,
                              height: 54,
                              fit: BoxFit.cover,
                            )),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                            radius: 53,
                            backgroundColor:
                                const Color(0xFF350446).withOpacity(.2),
                            child: Image.asset(
                              image9,
                              height: 48,
                              fit: BoxFit.cover,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                            radius: 53,
                            child: Image.asset(
                              image11,
                              height: 70,
                              color: Colors.white,
                              fit: BoxFit.cover,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                            radius: 50,
                            backgroundColor:
                                Colors.deepOrange.withOpacity(.085),
                            child: Image.asset(
                              image6,
                              height: 72,
                              fit: BoxFit.cover,
                            )),
                      ],
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }

  Widget MStype7({
    required String title,
    required String image1,
    required String image2,
    required String image3,
    required String image4,
    required String image5,
    required String image6,
    required String image7,
    required String image8,
    required String image9,
    required String image10,
    required String image11,
    required String image12,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppThemeData.cardGrey,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  title,
                  style: TextStyle(
                    fontSize:
                        AppThemeData.darkTheme.textTheme.titleMedium!.fontSize,
                    fontWeight: AppThemeData
                        .darkTheme.textTheme.headlineSmall!.fontWeight,
                    color: AppThemeData.textWhite,
                  ),
                ),
                const SizedBox(height: 20.0),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                            radius: 30,
                            backgroundColor:
                                const Color(0xFF02045D).withOpacity(.2),
                            child: Image.asset(
                              image1,
                              height: 40,
                              fit: BoxFit.cover,
                            )),
                        const SizedBox(
                          width: 8,
                        ),
                        CircleAvatar(
                            radius: 30,
                            backgroundColor:
                                const Color(0xFF02045D).withOpacity(.2),
                            child: Image.asset(
                              image2,
                              height: 40,
                              fit: BoxFit.cover,
                            )),
                        const SizedBox(
                          width: 8,
                        ),
                        CircleAvatar(
                            radius: 30,
                            child: Image.asset(
                              image3,
                              height: 50,
                              fit: BoxFit.cover,
                            )),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                            backgroundColor:
                                const Color(0xFF350446).withOpacity(.2),
                            radius: 30,
                            child: Image.asset(
                              image4,
                              height: 33,
                              fit: BoxFit.cover,
                            )),
                        const SizedBox(
                          width: 8,
                        ),
                        CircleAvatar(
                            radius: 32,
                            backgroundColor:
                                const Color(0xFF02045D).withOpacity(.2),
                            child: Image.asset(
                              image5,
                              height: 48,
                              fit: BoxFit.cover,
                            )),
                        const SizedBox(
                          width: 8,
                        ),
                        CircleAvatar(
                            radius: 33,
                            //backgroundColor: Color(0xFFFFFF).withOpacity(.2),
                            child: Image.asset(
                              image12,
                              height: 36,
                              color: Colors.white,
                              fit: BoxFit.cover,
                            )),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                            radius: 32,
                            backgroundColor: Colors.yellow.withOpacity(.09),
                            child: Image.asset(
                              image7,
                              height: 40,
                              fit: BoxFit.cover,
                            )),
                        const SizedBox(
                          width: 8,
                        ),
                        CircleAvatar(
                            radius: 32,
                            child: Image.asset(
                              image8,
                              height: 20,
                              fit: BoxFit.cover,
                            )),
                        const SizedBox(
                          width: 8,
                        ),
                        CircleAvatar(
                            radius: 32,
                            backgroundColor:
                                const Color(0xFF02045D).withOpacity(.2),
                            child: Image.asset(
                              image10,
                              height: 32,
                              fit: BoxFit.cover,
                            )),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                            radius: 33,
                            backgroundColor:
                                const Color(0xFF350446).withOpacity(.2),
                            child: Image.asset(
                              image9,
                              height: 28,
                              fit: BoxFit.cover,
                            )),
                        const SizedBox(
                          width: 8,
                        ),
                        CircleAvatar(
                            radius: 33,
                            child: Image.asset(
                              image11,
                              height: 50,
                              color: Colors.white,
                              fit: BoxFit.cover,
                            )),
                        const SizedBox(
                          width: 8,
                        ),
                        CircleAvatar(
                            radius: 33,
                            backgroundColor:
                                Colors.deepOrange.withOpacity(.085),
                            child: Image.asset(
                              image6,
                              height: 50,
                              fit: BoxFit.cover,
                            )),
                      ],
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}

class ProjectImagesWidget extends StatefulWidget {
  final List<String> images;
  final double height;

  const ProjectImagesWidget(
      {super.key, required this.images, required this.height});

  @override
  State<ProjectImagesWidget> createState() => _ProjectImagesWidgetState();
}

class _ProjectImagesWidgetState extends State<ProjectImagesWidget> {
  final ScrollController scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: scrollController,
      thumbVisibility: true,
      child: SingleChildScrollView(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Row(
          children: widget.images
              .map((e) => Container(
                    padding: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          ResponsiveScreenProvider.isDesktopScreen(context)
                              ? 20
                              : 10),
                      child: Image.asset(e, height: widget.height),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
