import 'package:ammar_hasan/utils/helpers.dart';
import 'package:flutter/material.dart';
import '../generated/assets.dart';
import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';
import '../widgets/project_data.dart';

class MS4PersonalProjects extends StatefulWidget {
  const MS4PersonalProjects({Key? key}) : super(key: key);

  @override
  State<MS4PersonalProjects> createState() => _MS4PersonalProjectsState();
}

class _MS4PersonalProjectsState extends State<MS4PersonalProjects> {
  final PageController _pageController = PageController(viewportFraction: 0.8);
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.personalProjectsKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
                title: DataValues.personalProjects, description: ''),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width < 330 ? 530 : 520,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: DataValues.projectDataList.length,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      var p = DataValues.projectDataList[index];
                      return Container(
                        margin: const EdgeInsets.all(20),
                        child: ContainerCard().mobileProjectCard(
                          images: p.images,
                          lang: p.language,
                          context: context,
                          title: p.title,
                          links: p.links,
                          height: 180,
                          fontSize: 11,
                          values: p.values,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        if (_currentPage > 0) {
                          _pageController.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      icon: const Icon(Icons.arrow_left),
                    ),
                    const SizedBox(width: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List<Widget>.generate(
                          DataValues.projectDataList.length, (index) {
                        return GestureDetector(
                          onTap: () {
                            if (_currentPage != index) {
                              _pageController.animateToPage(
                                index,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            }
                          },
                          child: Container(
                            width: 7,
                            height: 7,
                            margin: const EdgeInsets.symmetric(horizontal: 2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentPage == index
                                  ? const Color(0xFF019FAB)
                                  : Colors.grey,
                            ),
                          ),
                        );
                      }),
                    ),
                    const SizedBox(width: 10),
                    IconButton(
                      onPressed: () {
                        if (_currentPage < DataValues.projectDataList.length - 1) {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      icon: const Icon(Icons.arrow_right),
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

  // final List<ProjectData> projectDataListMobile = [
  //   ProjectData(
  //     links: [
  //       MyLink(type: LinkType.googlePlay, link: 'link'),
  //       MyLink(type: LinkType.behance, link: 'link'),
  //       MyLink(type: LinkType.appStore, link: 'link'),
  //     ],
  //     images: [
  //       Assets.lwynUserMain,
  //       Assets.lwynUser1,
  //       Assets.lwynUser2,
  //       Assets.lwynUser3,
  //       Assets.lwynUser4,
  //       Assets.lwynUser5,
  //       Assets.lwynUser6,
  //       Assets.lwynUser7,
  //     ],
  //     title: DataValues.project1Title,
  //     values: DataValues.project1Description,
  //   ),
  //   ProjectData(
  //     links: [
  //       MyLink(type: LinkType.googlePlay, link: 'link'),
  //       MyLink(type: LinkType.behance, link: 'link'),
  //       MyLink(type: LinkType.appStore, link: 'link'),
  //     ],
  //     images: [
  //       Assets.realEstate1,
  //       Assets.realEstate2,
  //       Assets.realEstate3,
  //       Assets.realEstate4,
  //     ],
  //     title: DataValues.project2Title,
  //     values: DataValues.project2Description,
  //   ),
  // ];
}
// TODO Mobile
// size: 11,
// height: 180.0,
// TODO Desktop
// height: 250.0,
// size: 13,
